#!/usr/bin/env bash
#
# Regenerates Casks/versatiles-studio.rb from the latest VersaTiles Studio release.
#
# The sibling of bin/make_formula.sh, and deliberately the same shape: the tap pulls from the
# release rather than the application pushing a file here, so there is one place that knows what a
# cask looks like.
#
# Two differences from the formula script, both because they were learned the hard way:
#
#   * The asset names are *found*, not composed. The dmg is called `VersaTiles-Studio_…` while the
#     Linux packages are `versatiles-studio_…`, GitHub rewrites characters it dislikes on upload, and
#     the naming changed three times before the first release. Matching on `_aarch64.dmg` survives
#     all of that; building the string does not.
#   * The checksums come from the API's `digest` field rather than from downloading each file. It is
#     the same sha256, and it saves pulling 45 MB to learn something the API already knows.

set -euo pipefail
cd "$(dirname "$0")/.."

repo="versatiles-org/versatiles-studio"
api="https://api.github.com/repos/${repo}/releases/latest"

release=$(curl -sfL -H 'Accept: application/vnd.github+json' "$api")
version=$(jq -r '.tag_name | ltrimstr("v")' <<<"$release")
[ -n "$version" ] && [ "$version" != "null" ] || { echo "no published release for $repo" >&2; exit 1; }

# Exactly one asset per architecture, or the cask would point at a guess.
find_asset() {
	local suffix="$1" found
	found=$(jq -r --arg s "$suffix" '[.assets[] | select(.name | endswith($s))] | .[].name' <<<"$release")
	[ "$(wc -l <<<"$found")" -eq 1 ] && [ -n "$found" ] || {
		echo "expected exactly one asset ending in $suffix, got: ${found:-none}" >&2; exit 1
	}
	printf '%s' "$found"
}
digest_of() {
	jq -r --arg n "$1" '.assets[] | select(.name == $n) | .digest | ltrimstr("sha256:")' <<<"$release"
}

name_arm=$(find_asset "_aarch64.dmg"); sha_arm=$(digest_of "$name_arm")
name_int=$(find_asset "_x64.dmg");     sha_int=$(digest_of "$name_int")

for sha in "$sha_arm" "$sha_int"; do
	[ "${#sha}" -eq 64 ] || { echo "sha256 has the wrong length: $sha" >&2; exit 1; }
done

# **The URL keeps `#{version}` in it.** Homebrew audits a cask whose URL does not mention the
# version as "unversioned" and demands `sha256 :no_check` — which would mean shipping a cask that
# verifies nothing. So the version is put back as an interpolation after the asset has been found:
# the name still comes from the release (a rename cannot break it) and the URL still reads as a
# template (the checksum stays meaningful).
placeholder='#{version}'
name_arm="${name_arm//$version/$placeholder}"
name_int="${name_int//$version/$placeholder}"
base="https://github.com/${repo}/releases/download/v${placeholder}"
mkdir -p Casks
cat <<_EOT_ >Casks/versatiles-studio.rb
cask "versatiles-studio" do
  version "${version}"

  on_arm do
    sha256 "${sha_arm}"

    url "${base}/${name_arm}",
        verified: "github.com/${repo}/"
  end
  on_intel do
    sha256 "${sha_int}"

    url "${base}/${name_int}",
        verified: "github.com/${repo}/"
  end

  name "VersaTiles Studio"
  desc "Open, inspect and build map tiles"
  homepage "https://github.com/${repo}"

  # **No \`depends_on macos:\`, deliberately.** \`brew style\` asks for one; every value we could
  # honestly give is refused. The bundle declares LSMinimumSystemVersion 10.13, and
  # \`depends_on macos: :high_sierra\` is disabled in Homebrew — that release is older than anything
  # Homebrew supports. Naming a newer one would invent a floor nobody has tested against. Left out
  # until someone measures where it actually stops working.

  app "VersaTiles Studio.app"

  # Everything the application writes, so \`brew uninstall --zap\` leaves nothing behind.
  # Alphabetical because \`brew style\` requires it.
  zap trash: [
    "~/Library/Application Support/org.versatiles.studio",
    "~/Library/Caches/org.versatiles.studio",
    "~/Library/Saved Application State/org.versatiles.studio.savedState",
    "~/Library/WebKit/org.versatiles.studio",
  ]

  caveats <<~EOS
    This build is not notarised, so macOS will refuse to open it the first time.

    Open System Settings > Privacy & Security, find the line naming VersaTiles Studio
    and press "Open Anyway"; or clear the flag yourself:

      xattr -d com.apple.quarantine "/Applications/VersaTiles Studio.app"

    Once per installed version.
  EOS
end
_EOT_

echo "wrote Casks/versatiles-studio.rb for ${version}"
echo "  arm   ${name_arm}"
echo "  intel ${name_int}"
