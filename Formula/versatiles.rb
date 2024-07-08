class Versatiles < Formula
	desc "A toolbox for converting, checking and serving map tiles in various formats."
	homepage "https://github.com/versatiles-org/versatiles-rs"
	version "0.12.2"
	license "MIT"

	on_arm do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v0.12.2/versatiles-macos-aarch64.tar.gz"
		sha256 "142b5dd4cf6ae018ef1e81d62772db8f8b9120dc748f8ebf14e2290a064d5f9e"
	end

	on_intel do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v0.12.2/versatiles-macos-x86_64.tar.gz"
		sha256 "c047b1e2798f2086c0e399f2c2c6f2f2f58c3c856f932510a5834d0648d34e0f"
	end

	def install
		bin.install "versatiles"
	end
end
