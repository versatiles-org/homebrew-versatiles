class Versatiles < Formula
	desc "A toolbox for converting, checking and serving map tiles in various formats."
	homepage "https://github.com/versatiles-org/versatiles-rs"
	version "4.9.0"
	license "MIT"

	on_arm do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v4.9.0/versatiles-macos-aarch64.tar.gz"
		sha256 "28b18db0c8fb7e83ad894a3a750c8fc565cf0411430d57a8a1c3d473930cf587"
	end

	on_intel do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v4.9.0/versatiles-macos-x86_64.tar.gz"
		sha256 "cca8eebae15cee14e8340942b985c443c1b06ac47102abb31a81e56a1690eac9"
	end

	def install
		bin.install "versatiles"
	end
end
