class Versatiles < Formula
	desc "A toolbox for converting, checking and serving map tiles in various formats."
	homepage "https://github.com/versatiles-org/versatiles-rs"
	version "4.2.1"
	license "MIT"

	on_arm do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v4.2.1/versatiles-macos-aarch64.tar.gz"
		sha256 "27b7ef42760e88e81807b5e9b1d1fe52e825147ad668d0df804b96bfe45dcbac"
	end

	on_intel do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v4.2.1/versatiles-macos-x86_64.tar.gz"
		sha256 "4bccf37ceec4bc3533bfdcc9c503c2b66a84e33dd8c7343e147d21dbb2424493"
	end

	def install
		bin.install "versatiles"
	end
end
