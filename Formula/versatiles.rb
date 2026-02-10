class Versatiles < Formula
	desc "A toolbox for converting, checking and serving map tiles in various formats."
	homepage "https://github.com/versatiles-org/versatiles-rs"
	version "3.6.0"
	license "MIT"

	on_arm do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v3.6.0/versatiles-macos-aarch64.tar.gz"
		sha256 "e6752c6b8837af6a394108814485c033a61786156d81af583cc4f879b9aafeb6"
	end

	on_intel do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v3.6.0/versatiles-macos-x86_64.tar.gz"
		sha256 "f5a51cbf028c6c9fbb379007c3d5305b912a2956be2e086644a272429c0d0968"
	end

	def install
		bin.install "versatiles"
	end
end
