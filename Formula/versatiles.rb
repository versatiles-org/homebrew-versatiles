class Versatiles < Formula
	desc "A toolbox for converting, checking and serving map tiles in various formats."
	homepage "https://github.com/versatiles-org/versatiles-rs"
	version "4.2.2"
	license "MIT"

	on_arm do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v4.2.2/versatiles-macos-aarch64.tar.gz"
		sha256 "8a37f690c5b7f9eb25c4bf6e49cd0198f0a6d039c1ec20f72b58f76daaf3d56a"
	end

	on_intel do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v4.2.2/versatiles-macos-x86_64.tar.gz"
		sha256 "35ff300d5b77588b5841df970c9e25fc7112812e3f572ee4178192bd1c36d0cc"
	end

	def install
		bin.install "versatiles"
	end
end
