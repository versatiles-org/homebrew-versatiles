class Versatiles < Formula
	desc "A toolbox for converting, checking and serving map tiles in various formats."
	homepage "https://github.com/versatiles-org/versatiles-rs"
	version "4.6.0"
	license "MIT"

	on_arm do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v4.6.0/versatiles-macos-aarch64.tar.gz"
		sha256 "46f8b3e6d4d3daf79ef9fb179e8560aeaf74fc6216cbbba8637264d967780c4a"
	end

	on_intel do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v4.6.0/versatiles-macos-x86_64.tar.gz"
		sha256 "603ed8cd480bf58b2a8259c072a267ccf1c9d7b9728d72ccf29878120f5dff58"
	end

	def install
		bin.install "versatiles"
	end
end
