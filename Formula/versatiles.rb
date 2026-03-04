class Versatiles < Formula
	desc "A toolbox for converting, checking and serving map tiles in various formats."
	homepage "https://github.com/versatiles-org/versatiles-rs"
	version "3.8.0"
	license "MIT"

	on_arm do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v3.8.0/versatiles-macos-aarch64.tar.gz"
		sha256 "49d50c27246a24c0677cb376b78b76d23584664f6cd9005ec3d9c5a57b6c1dcb"
	end

	on_intel do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v3.8.0/versatiles-macos-x86_64.tar.gz"
		sha256 "5bf36132dbc3e4c86b35a8c3ab40edcca9598e28ad1f0b063833fa8afd7ad7f7"
	end

	def install
		bin.install "versatiles"
	end
end
