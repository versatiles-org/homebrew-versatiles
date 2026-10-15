class Versatiles < Formula
	desc "A toolbox for converting, checking and serving map tiles in various formats."
	homepage "https://github.com/versatiles-org/versatiles-rs"
	version "5.2.0"
	license "MIT"

	on_arm do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v5.2.0/versatiles-macos-aarch64.tar.gz"
		sha256 "5bc15c757a18616a8894e82b0287af8ff6a56f0746f853ee76233e2e60f7ada0"
	end

	on_intel do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v5.2.0/versatiles-macos-x86_64.tar.gz"
		sha256 "d2db70be589cf7cf60828cf0ec2e14b2da7e5f573fa170f69b21054f0d7c9bdc"
	end

	def install
		bin.install "versatiles"
	end
end
