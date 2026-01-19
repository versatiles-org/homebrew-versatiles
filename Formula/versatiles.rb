class Versatiles < Formula
	desc "A toolbox for converting, checking and serving map tiles in various formats."
	homepage "https://github.com/versatiles-org/versatiles-rs"
	version "3.3.0"
	license "MIT"

	on_arm do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v3.3.0/versatiles-macos-aarch64.tar.gz"
		sha256 "03d016e6e984ad9c4be72946013bb519d9ea9d4f132733e53c83c76b25e14581"
	end

	on_intel do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v3.3.0/versatiles-macos-x86_64.tar.gz"
		sha256 "951f2ae9de81e07f41e2d4351e8a6ca4cf60241a60eab7862d73485969b9d8b2"
	end

	def install
		bin.install "versatiles"
	end
end
