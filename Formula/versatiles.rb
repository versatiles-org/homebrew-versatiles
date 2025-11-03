class Versatiles < Formula
	desc "A toolbox for converting, checking and serving map tiles in various formats."
	homepage "https://github.com/versatiles-org/versatiles-rs"
	version "2.1.0"
	license "MIT"

	on_arm do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v2.1.0/versatiles-macos-aarch64.tar.gz"
		sha256 "d2320af9e5ccbd3f13e75beb36d3a941b1c62dab3ad1352f419a43ae97c7ab36"
	end

	on_intel do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v2.1.0/versatiles-macos-x86_64.tar.gz"
		sha256 "ddf0031d246a343696cceed675494d1751b66af5b25f221a1c2edebadd20fac2"
	end

	def install
		bin.install "versatiles"
	end
end
