class Versatiles < Formula
	desc "A toolbox for converting, checking and serving map tiles in various formats."
	homepage "https://github.com/versatiles-org/versatiles-rs"
	version "4.1.0"
	license "MIT"

	on_arm do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v4.1.0/versatiles-macos-aarch64.tar.gz"
		sha256 "6e6632975dc1f810a9f9a85c71f45e742c275cd99c7c00dc32610ad768d764e2"
	end

	on_intel do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v4.1.0/versatiles-macos-x86_64.tar.gz"
		sha256 "2782eca00ae5af26a21b89bb4fe907c78740f8ccdba9af2e200182386ce0885c"
	end

	def install
		bin.install "versatiles"
	end
end
