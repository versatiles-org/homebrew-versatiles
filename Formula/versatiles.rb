class Versatiles < Formula
	desc "A toolbox for converting, checking and serving map tiles in various formats."
	homepage "https://github.com/versatiles-org/versatiles-rs"
	version "0.6.11"
	license "MIT"

	on_arm do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v0.6.11/versatiles-macos-aarch64.tar.gz"
		sha256 "adf51838a5fe78dba9197cee19398e33b8943f037411ef980b00f11663529dcf"
	end

	on_intel do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v0.6.11/versatiles-macos-x86_64.tar.gz"
		sha256 "9ad7f5fb99ac1a5cc2498ab50a206b4f1370c16d7a6069b83ba2af3e02b6cd55"
	end

	def install
		bin.install "versatiles"
	end
end
