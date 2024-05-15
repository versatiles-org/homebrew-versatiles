class Versatiles < Formula
	desc "A toolbox for converting, checking and serving map tiles in various formats."
	homepage "https://github.com/versatiles-org/versatiles-rs"
	version "0.9.1"
	license "MIT"

	on_arm do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v0.9.1/versatiles-macos-aarch64.tar.gz"
		sha256 "77ec76883796975de6c91ef9c17c2984fcd65eb69a7c3e85e4e3d46a9d26760d"
	end

	on_intel do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v0.9.1/versatiles-macos-x86_64.tar.gz"
		sha256 "bc0ebe6f02e9c03b9d37e28ee54d6dd8f0158eb9422ae4a84e86549908301909"
	end

	def install
		bin.install "versatiles"
	end
end
