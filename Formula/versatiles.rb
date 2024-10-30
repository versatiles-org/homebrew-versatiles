class Versatiles < Formula
	desc "A toolbox for converting, checking and serving map tiles in various formats."
	homepage "https://github.com/versatiles-org/versatiles-rs"
	version "0.13.0"
	license "MIT"

	on_arm do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v0.13.0/versatiles-macos-aarch64.tar.gz"
		sha256 "eed75a5db9df6ec798ce337e8d5062b13d8ccace8280977267ad0e823cdd9463"
	end

	on_intel do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v0.13.0/versatiles-macos-x86_64.tar.gz"
		sha256 "22101919d053bbbd3cc03cf7d32d096857e55add828a6b5d7921014908897c93"
	end

	def install
		bin.install "versatiles"
	end
end
