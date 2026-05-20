class Versatiles < Formula
	desc "A toolbox for converting, checking and serving map tiles in various formats."
	homepage "https://github.com/versatiles-org/versatiles-rs"
	version "4.1.2"
	license "MIT"

	on_arm do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v4.1.2/versatiles-macos-aarch64.tar.gz"
		sha256 "a138bf9b7595d4182f86942dc2d5eb82fc3ac4a6ee48f9a58c79213b7863955a"
	end

	on_intel do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v4.1.2/versatiles-macos-x86_64.tar.gz"
		sha256 "1fb17b231bec0d8f9ea623a0c29ce9df96330bf8be9d4901a6084924ac1c12ab"
	end

	def install
		bin.install "versatiles"
	end
end
