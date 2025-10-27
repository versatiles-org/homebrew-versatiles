class Versatiles < Formula
	desc "A toolbox for converting, checking and serving map tiles in various formats."
	homepage "https://github.com/versatiles-org/versatiles-rs"
	version "2.0.1"
	license "MIT"

	on_arm do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v2.0.1/versatiles-macos-aarch64.tar.gz"
		sha256 "67c91e73ccd36a7d132d661d562328f907cd8f2f560d689368eac4544f387256"
	end

	on_intel do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v2.0.1/versatiles-macos-x86_64.tar.gz"
		sha256 "1b09db924788a2ad7b7f1213a7be79742bd50cfd6a7d620b2dc9dac067d3e7fd"
	end

	def install
		bin.install "versatiles"
	end
end
