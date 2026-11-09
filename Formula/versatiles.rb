class Versatiles < Formula
	desc "A toolbox for converting, checking and serving map tiles in various formats."
	homepage "https://github.com/versatiles-org/versatiles-rs"
	version "5.9.0"
	license "MIT"

	on_arm do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v5.9.0/versatiles-macos-aarch64.tar.gz"
		sha256 "5be73d0cdb1e4bddd1a14935936375675ce6cb3080b9a8f62d98e99673a3cb9c"
	end

	on_intel do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v5.9.0/versatiles-macos-x86_64.tar.gz"
		sha256 "d2d61db8dcdb38b65e73caee77b1c0d76135ead3bfd890a8d8393585819c3dbf"
	end

	def install
		bin.install "versatiles"
	end
end
