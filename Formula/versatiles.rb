class Versatiles < Formula
	desc "A toolbox for converting, checking and serving map tiles in various formats."
	homepage "https://github.com/versatiles-org/versatiles-rs"
	version "3.1.0"
	license "MIT"

	on_arm do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v3.1.0/versatiles-macos-aarch64.tar.gz"
		sha256 "b094a0d7583a0387c48135a16633aa98c8653f1ac36fc0b921e5855352ec3def"
	end

	on_intel do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v3.1.0/versatiles-macos-x86_64.tar.gz"
		sha256 "b37e0d4af66642f8a6c4150774692a50cbcb145867ff5372cdb5cd2653c6394f"
	end

	def install
		bin.install "versatiles"
	end
end
