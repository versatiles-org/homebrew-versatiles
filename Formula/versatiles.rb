class Versatiles < Formula
	desc "A toolbox for converting, checking and serving map tiles in various formats."
	homepage "https://github.com/versatiles-org/versatiles-rs"
	version "4.4.0"
	license "MIT"

	on_arm do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v4.4.0/versatiles-macos-aarch64.tar.gz"
		sha256 "f926c5ab90c789804c14fdc0e25a5cfa544c7e458d19ba9aee4cae5a0934073c"
	end

	on_intel do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v4.4.0/versatiles-macos-x86_64.tar.gz"
		sha256 "f57c2d512a66579f5f4f7a60f248dbe056bf4e4dd076b03f3c546c4571487a7b"
	end

	def install
		bin.install "versatiles"
	end
end
