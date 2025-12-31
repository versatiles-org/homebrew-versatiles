class Versatiles < Formula
	desc "A toolbox for converting, checking and serving map tiles in various formats."
	homepage "https://github.com/versatiles-org/versatiles-rs"
	version "3.0.1"
	license "MIT"

	on_arm do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v3.0.1/versatiles-macos-aarch64.tar.gz"
		sha256 "c18456e61a7ff481f0bd15cf600273b28727a3cb6a4413906cf5974e577d9257"
	end

	on_intel do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v3.0.1/versatiles-macos-x86_64.tar.gz"
		sha256 "acd19d56e32cee108caa15d2c7db5b4ef90ccd7db256c0eeb13410d28b31d628"
	end

	def install
		bin.install "versatiles"
	end
end
