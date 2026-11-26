cask "versatiles-studio" do
  version "0.9.0"

  on_arm do
    sha256 "1ade7b23b23eb64e6feeea145ab3e2b1251e338af8c63299230de8dbb6392e8e"

    url "https://github.com/versatiles-org/versatiles-studio/releases/download/v#{version}/VersaTiles-Studio_#{version}_aarch64.dmg"
  end
  on_intel do
    sha256 "be6b1c322772e82c1da0782314a064438a78294a0feb5ffbc558f206b80f9fd6"

    url "https://github.com/versatiles-org/versatiles-studio/releases/download/v#{version}/VersaTiles-Studio_#{version}_x64.dmg"
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
