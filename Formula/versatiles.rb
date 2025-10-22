class Versatiles < Formula
	desc "A toolbox for converting, checking and serving map tiles in various formats."
	homepage "https://github.com/versatiles-org/versatiles-rs"
	version "1.1.0"
	license "MIT"

	on_arm do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v1.1.0/versatiles-macos-aarch64.tar.gz"
		sha256 "9dae22910a8ccf8d88036c6e32be20f7f30af5ac17c1f3ce5e293852433ee64e"
	end

	on_intel do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v1.1.0/versatiles-macos-x86_64.tar.gz"
		sha256 "9ab4e08174dcda0220f9793be0fdf8b421489e5f72b626dbeb74e03fb971ee4c"
	end

	def install
		bin.install "versatiles"
	end
end
