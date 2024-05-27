class Versatiles < Formula
	desc "A toolbox for converting, checking and serving map tiles in various formats."
	homepage "https://github.com/versatiles-org/versatiles-rs"
	version "0.11.1"
	license "MIT"

	on_arm do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v0.11.1/versatiles-macos-aarch64.tar.gz"
		sha256 "ca629f3bf8fd002904a937af9fa73ba29f1198b3d13d71059ecc22e788e376f6"
	end

	on_intel do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v0.11.1/versatiles-macos-x86_64.tar.gz"
		sha256 "494d4b054addb1de0999a3c3cc5330c28435df3d0c85eb7ff9d48ae19c097d8e"
	end

	def install
		bin.install "versatiles"
	end
end
