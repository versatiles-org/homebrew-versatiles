class Versatiles < Formula
	desc "A toolbox for converting, checking and serving map tiles in various formats."
	homepage "https://github.com/versatiles-org/versatiles-rs"
	version "4.11.0"
	license "MIT"

	on_arm do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v4.11.0/versatiles-macos-aarch64.tar.gz"
		sha256 "49675e3cc415b20daab0142246eff2ca0def6dbbf3828891a5a6bd36d06630ea"
	end

	on_intel do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v4.11.0/versatiles-macos-x86_64.tar.gz"
		sha256 "e73e3da483ebc61bbd4e87e9e81a2243ed6d5ee12e8d6bc8c554147beda519d8"
	end

	def install
		bin.install "versatiles"
	end
end
