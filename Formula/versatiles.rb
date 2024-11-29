class Versatiles < Formula
	desc "A toolbox for converting, checking and serving map tiles in various formats."
	homepage "https://github.com/versatiles-org/versatiles-rs"
	version "0.14.5"
	license "MIT"

	on_arm do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v0.14.5/versatiles-macos-aarch64.tar.gz"
		sha256 "84dea763f05e9099e6c72ec873af5da1ad3df10c2439721d843b130ad6b80d68"
	end

	on_intel do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v0.14.5/versatiles-macos-x86_64.tar.gz"
		sha256 "8d4de5631b3de242c538e14223b1a46a675e2ba92e1d844801bed0149b513962"
	end

	def install
		bin.install "versatiles"
	end
end
