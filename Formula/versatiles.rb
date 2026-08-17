class Versatiles < Formula
	desc "A toolbox for converting, checking and serving map tiles in various formats."
	homepage "https://github.com/versatiles-org/versatiles-rs"
	version "4.8.0"
	license "MIT"

	on_arm do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v4.8.0/versatiles-macos-aarch64.tar.gz"
		sha256 "96f6f25abe7de2c70ca0abb72fb44c00ed5c8ed8bde2cf6c14c33a0b1c82559e"
	end

	on_intel do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v4.8.0/versatiles-macos-x86_64.tar.gz"
		sha256 "4662eb7257d18d8aa3d1cf24b2e795040454bf24a7bf6481017d6730e4431e61"
	end

	def install
		bin.install "versatiles"
	end
end
