class Versatiles < Formula
	desc "A toolbox for converting, checking and serving map tiles in various formats."
	homepage "https://github.com/versatiles-org/versatiles-rs"
	version "3.8.1"
	license "MIT"

	on_arm do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v3.8.1/versatiles-macos-aarch64.tar.gz"
		sha256 "6ad84ca42a01e7f81289473b69cb1431edd65117d95c4167eb81e8743e8ef9ca"
	end

	on_intel do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v3.8.1/versatiles-macos-x86_64.tar.gz"
		sha256 "0e93fac55f8146a5849bdb62e4b0b73b57648e471e7d8dafb6145258136669cd"
	end

	def install
		bin.install "versatiles"
	end
end
