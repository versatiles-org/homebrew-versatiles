class Versatiles < Formula
	desc "A toolbox for converting, checking and serving map tiles in various formats."
	homepage "https://github.com/versatiles-org/versatiles-rs"
	version "0.12.1"
	license "MIT"

	on_arm do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v0.12.1/versatiles-macos-aarch64.tar.gz"
		sha256 "25e3fe52704d3370ed96f0938544f881ac6749d3a579e6f9687f2d7592b48ea5"
	end

	on_intel do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v0.12.1/versatiles-macos-x86_64.tar.gz"
		sha256 "1c20b2c472578741d90fc1bf7d2accc6c0cfd5bb967e09a7746464a7b33e1d09"
	end

	def install
		bin.install "versatiles"
	end
end
