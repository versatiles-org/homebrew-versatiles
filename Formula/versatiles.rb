class Versatiles < Formula
	desc "A toolbox for converting, checking and serving map tiles in various formats."
	homepage "https://github.com/versatiles-org/versatiles-rs"
	version "0.15.6"
	license "MIT"

	on_arm do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v0.15.6/versatiles-macos-aarch64.tar.gz"
		sha256 "38b53f31dbb934e74773eb6ac9296cd08fda4c4d951b56197a8ccaea0e52ef5f"
	end

	on_intel do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v0.15.6/versatiles-macos-x86_64.tar.gz"
		sha256 "cd5bc7ffab8cda26f52deb6b3e83c73f4a3fb52cc2f489b2026dd74ee9e9ae6d"
	end

	def install
		bin.install "versatiles"
	end
end
