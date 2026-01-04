class Versatiles < Formula
	desc "A toolbox for converting, checking and serving map tiles in various formats."
	homepage "https://github.com/versatiles-org/versatiles-rs"
	version "3.0.6"
	license "MIT"

	on_arm do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v3.0.6/versatiles-macos-aarch64.tar.gz"
		sha256 "854dc1786111113be15626035fedcc17128751936b0669692e06e68ee7334726"
	end

	on_intel do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v3.0.6/versatiles-macos-x86_64.tar.gz"
		sha256 "2992d2c62af737be55d68b26766d5a732907ca4194cee6e1d1c59194a472f4b0"
	end

	def install
		bin.install "versatiles"
	end
end
