class Versatiles < Formula
	desc "A toolbox for converting, checking and serving map tiles in various formats."
	homepage "https://github.com/versatiles-org/versatiles-rs"
	version "4.2.0"
	license "MIT"

	on_arm do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v4.2.0/versatiles-macos-aarch64.tar.gz"
		sha256 "864cdf456ea808cb5f1acb4f0bff3120a5236f5dd0c24b195524c62adebd0029"
	end

	on_intel do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v4.2.0/versatiles-macos-x86_64.tar.gz"
		sha256 "f35b21116f2daa41ad334891e4969015232feae251d3a7b8ba6d1662ce1e36d5"
	end

	def install
		bin.install "versatiles"
	end
end
