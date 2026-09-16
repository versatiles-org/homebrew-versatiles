class VersatilesGlyphs < Formula
  desc "Generate SDF glyphs from fonts for MapLibre"
  homepage "https://github.com/versatiles-org/versatiles-glyphs-rs"
  license "Unlicense"

  on_macos do
    on_arm do
      url "https://github.com/versatiles-org/versatiles-glyphs-rs/releases/download/v0.10.1/aarch64-apple-darwin.tar.gz"
      sha256 "18f18aea4ce24dc7badcbc4bc8f23db4995050ce363936f665bfd4016eb66385"
    end
    on_intel do
      url "https://github.com/versatiles-org/versatiles-glyphs-rs/releases/download/v0.10.1/x86_64-apple-darwin.tar.gz"
      sha256 "c03713c6f55c189cc376902cf6d6bd6e12b68cd95e8bb49329d79ad53e9f56c3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/versatiles-org/versatiles-glyphs-rs/releases/download/v0.10.1/aarch64-unknown-linux-musl.tar.gz"
      sha256 "78393d1ed643ce3b646abd50c67169d7a84a523f624b60d717d57cba7833eac4"
    end
    on_intel do
      url "https://github.com/versatiles-org/versatiles-glyphs-rs/releases/download/v0.10.1/x86_64-unknown-linux-musl.tar.gz"
      sha256 "ead8a08b924127aebccc68c08991b4477630195b47df0b358e2f4bc8f12b1493"
    end
  end

  def install
    bin.install "versatiles_glyphs"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/versatiles_glyphs --version")
  end
end
