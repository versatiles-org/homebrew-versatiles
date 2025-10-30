class Versatiles < Formula
	desc "A toolbox for converting, checking and serving map tiles in various formats."
	homepage "https://github.com/versatiles-org/versatiles-rs"
	version "2.0.2"
	license "MIT"

	on_arm do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v2.0.2/versatiles-macos-aarch64.tar.gz"
		sha256 "3c43c2a1608b7edbef1ae99ddd471e99f7e15ecdd1db036852203aef11124edb"
	end

	on_intel do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v2.0.2/versatiles-macos-x86_64.tar.gz"
		sha256 "0729d6080f6df94fbf7600816c4c4a586b18af1f99bfdfe3cbfdf1db56e97016"
	end

	def install
		bin.install "versatiles"
	end
end
