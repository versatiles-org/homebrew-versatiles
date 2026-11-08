class Versatiles < Formula
	desc "A toolbox for converting, checking and serving map tiles in various formats."
	homepage "https://github.com/versatiles-org/versatiles-rs"
	version "5.8.0"
	license "MIT"

	on_arm do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v5.8.0/versatiles-macos-aarch64.tar.gz"
		sha256 "ebc028ec27cf2cb114cb4987d961fe8d38750a3048badd6789ab45a26057344a"
	end

	on_intel do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v5.8.0/versatiles-macos-x86_64.tar.gz"
		sha256 "15f0246614c955b14b1d78bfa7170f238d07b8f035ece4244e5df34f6b5e20d5"
	end

	def install
		bin.install "versatiles"
	end
end
