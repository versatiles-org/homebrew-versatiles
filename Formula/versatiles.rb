class Versatiles < Formula
	desc "A toolbox for converting, checking and serving map tiles in various formats."
	homepage "https://github.com/versatiles-org/versatiles-rs"
	version "0.11.5"
	license "MIT"

	on_arm do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v0.11.5/versatiles-macos-aarch64.tar.gz"
		sha256 "f5b6b1137fbbd5cb261cbf398569682d10c520b1caa0a171013a40c6f317182c"
	end

	on_intel do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v0.11.5/versatiles-macos-x86_64.tar.gz"
		sha256 "c139b781ecc05798ccea7454a57e3a9ad21f61fcf45729161271469136eafd76"
	end

	def install
		bin.install "versatiles"
	end
end
