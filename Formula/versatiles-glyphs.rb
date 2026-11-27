class VersatilesGlyphs < Formula
  desc "Generate SDF glyphs from fonts for MapLibre"
  homepage "https://github.com/versatiles-org/versatiles-glyphs-rs"
  license "Unlicense"

  on_macos do
    on_arm do
      url "https://github.com/versatiles-org/versatiles-glyphs-rs/releases/download/v0.10.2/aarch64-apple-darwin.tar.gz"
      sha256 "13192bb6d5eb2b2e71d906495f9f8351d31627a75b2e4defdb016a5c3cceea72"
    end
    on_intel do
      url "https://github.com/versatiles-org/versatiles-glyphs-rs/releases/download/v0.10.2/x86_64-apple-darwin.tar.gz"
      sha256 "f0e2aa6bc41cc6cefb7ddf918870b1a82be3bc66179857c7418baac0436252ba"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/versatiles-org/versatiles-glyphs-rs/releases/download/v0.10.2/aarch64-unknown-linux-musl.tar.gz"
      sha256 "df7b0262d891a7ee4ae842cc920316b9fc4ae93ce7aefb2a89538d212191076e"
    end
    on_intel do
      url "https://github.com/versatiles-org/versatiles-glyphs-rs/releases/download/v0.10.2/x86_64-unknown-linux-musl.tar.gz"
      sha256 "a43dfa7d8b4cb85cdb29e339c86ea84520222719879a193778e769e014be71d9"
    end
  end

  def install
    bin.install "versatiles_glyphs"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/versatiles_glyphs --version")
  end
end
