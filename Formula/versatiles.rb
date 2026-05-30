class Versatiles < Formula
	desc "A toolbox for converting, checking and serving map tiles in various formats."
	homepage "https://github.com/versatiles-org/versatiles-rs"
	version "4.1.4"
	license "MIT"

	on_arm do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v4.1.4/versatiles-macos-aarch64.tar.gz"
		sha256 "5b3656ecc6e9450b65928139fb994961859d9637d585bfa06ea9c25db51315db"
	end

	on_intel do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v4.1.4/versatiles-macos-x86_64.tar.gz"
		sha256 "5ff4782eafcc25f24733c68e6c333b453546553b7d0324142762e707b995314e"
	end

	def install
		bin.install "versatiles"
	end
end
