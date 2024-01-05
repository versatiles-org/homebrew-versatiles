class Versatiles < Formula
	desc "A toolbox for converting, checking and serving map tiles in various formats."
	homepage "https://github.com/versatiles-org/versatiles-rs"
	version "0.6.10"
	license "MIT"

	on_arm do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v0.6.10/versatiles-macos-aarch64.tar.gz"
		sha256 "4c82acf9c3647b9ba4c7c5194de55ffc231c7cf7ae7f7f6f00a506c2650df853"
	end

	on_intel do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v0.6.10/versatiles-macos-x86_64.tar.gz"
		sha256 "bd1c138b4cf9522c415cf0a70db1dec639c3d0f53f4763e947fab9e3d0efb86b"
	end

	def install
		bin.install "versatiles"
	end
end
