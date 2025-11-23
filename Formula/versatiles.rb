class Versatiles < Formula
	desc "A toolbox for converting, checking and serving map tiles in various formats."
	homepage "https://github.com/versatiles-org/versatiles-rs"
	version "2.2.0"
	license "MIT"

	on_arm do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v2.2.0/versatiles-macos-aarch64.tar.gz"
		sha256 "9397dc4bc83ae3e0b315d813c055c2f2188d719df9381f329b4d45f768ff9ff3"
	end

	on_intel do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v2.2.0/versatiles-macos-x86_64.tar.gz"
		sha256 "401a20ee65fb4300808afc714c82495fb44d502b27249407e9cca27c1e0799a2"
	end

	def install
		bin.install "versatiles"
	end
end
