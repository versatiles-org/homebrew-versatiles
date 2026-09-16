#!/usr/bin/env bash
#
# Regenerates Formula/versatiles-glyphs.rb from the latest versatiles-glyphs-rs release.
#
# Built like bin/make_cask.sh rather than bin/make_formula.sh: assets are looked up in the release
# and checksums come from the API's `digest` field, so nothing is downloaded.
#
# Unlike the versatiles formula, this one also covers Linux. The release ships static musl builds,
# which run on any distribution Homebrew does, so there is no glibc version to get wrong.

set -euo pipefail
cd "$(dirname "$0")/.."

repo="versatiles-org/versatiles-glyphs-rs"
api="https://api.github.com/repos/${repo}/releases/latest"

release=$(curl -sfL -H 'Accept: application/vnd.github+json' "$api")
tag=$(jq -r '.tag_name' <<<"$release")
[ -n "$tag" ] && [ "$tag" != "null" ] || { echo "no published release for $repo" >&2; exit 1; }
version="${tag#v}"

# The asset names are target triples, so they are stable and can be named exactly. Failing on a
# missing one is the point: a formula without a platform is better than one with a stale checksum.
digest_of() {
	local sha
	sha=$(jq -r --arg n "$1" '.assets[] | select(.name == $n) | .digest | ltrimstr("sha256:")' <<<"$release")
	[ "${#sha}" -eq 64 ] || { echo "no usable sha256 for asset $1: ${sha:-none}" >&2; exit 1; }
	printf '%s' "$sha"
}

base="https://github.com/${repo}/releases/download/${tag}"
sha_mac_arm=$(digest_of "aarch64-apple-darwin.tar.gz")
sha_mac_int=$(digest_of "x86_64-apple-darwin.tar.gz")
sha_linux_arm=$(digest_of "aarch64-unknown-linux-musl.tar.gz")
sha_linux_int=$(digest_of "x86_64-unknown-linux-musl.tar.gz")

mkdir -p Formula
cat <<_EOT_ >Formula/versatiles-glyphs.rb
class VersatilesGlyphs < Formula
  desc "Generate SDF glyphs from fonts for MapLibre"
  homepage "https://github.com/${repo}"
  license "Unlicense"

  on_macos do
    on_arm do
      url "${base}/aarch64-apple-darwin.tar.gz"
      sha256 "${sha_mac_arm}"
    end
    on_intel do
      url "${base}/x86_64-apple-darwin.tar.gz"
      sha256 "${sha_mac_int}"
    end
  end

  on_linux do
    on_arm do
      url "${base}/aarch64-unknown-linux-musl.tar.gz"
      sha256 "${sha_linux_arm}"
    end
    on_intel do
      url "${base}/x86_64-unknown-linux-musl.tar.gz"
      sha256 "${sha_linux_int}"
    end
  end

  def install
    bin.install "versatiles_glyphs"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/versatiles_glyphs --version")
  end
end
_EOT_

echo "wrote Formula/versatiles-glyphs.rb for ${version}"
