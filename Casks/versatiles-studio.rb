cask "versatiles-studio" do
  version "0.2.0"

  on_arm do
    sha256 "0ac7ae80606abb158f6019d5a07299cc158c5d99019176f5e304770f46670ae0"

    url "https://github.com/versatiles-org/versatiles-studio/releases/download/v#{version}/VersaTiles-Studio_#{version}_aarch64.dmg",
        verified: "github.com/versatiles-org/versatiles-studio/"
  end
  on_intel do
    sha256 "da44d2b144624802e8955e6891d4e7074dff58fd13be9c926219dbf7c9b94a4e"

    url "https://github.com/versatiles-org/versatiles-studio/releases/download/v#{version}/VersaTiles-Studio_#{version}_x64.dmg",
        verified: "github.com/versatiles-org/versatiles-studio/"
  end

  name "VersaTiles Studio"
  desc "Open, inspect and build map tiles"
  homepage "https://github.com/versatiles-org/versatiles-studio"

  # **No `depends_on macos:`, deliberately.** `brew style` asks for one; every value we could
  # honestly give is refused. The bundle declares LSMinimumSystemVersion 10.13, and
  # `depends_on macos: :high_sierra` is disabled in Homebrew — that release is older than anything
  # Homebrew supports. Naming a newer one would invent a floor nobody has tested against. Left out
  # until someone measures where it actually stops working.

  app "VersaTiles Studio.app"

  # Everything the application writes, so `brew uninstall --zap` leaves nothing behind.
  # Alphabetical because `brew style` requires it.
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
