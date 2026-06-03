class Versatiles < Formula
	desc "A toolbox for converting, checking and serving map tiles in various formats."
	homepage "https://github.com/versatiles-org/versatiles-rs"
	version "4.1.5"
	license "MIT"

	on_arm do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v4.1.5/versatiles-macos-aarch64.tar.gz"
		sha256 "47b8481cb22074a0e65390643b8e32379b1fefb3d21b7d3cc8478513de276ae7"
	end

	on_intel do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v4.1.5/versatiles-macos-x86_64.tar.gz"
		sha256 "5637f24e1e5c937d942d302e972b4150fdc01e6ab1459f653c33a511dca7d6a5"
	end

	def install
		bin.install "versatiles"
	end
end
