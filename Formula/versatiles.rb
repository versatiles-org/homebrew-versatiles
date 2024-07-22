class Versatiles < Formula
	desc "A toolbox for converting, checking and serving map tiles in various formats."
	homepage "https://github.com/versatiles-org/versatiles-rs"
	version "0.12.4"
	license "MIT"

	on_arm do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v0.12.4/versatiles-macos-aarch64.tar.gz"
		sha256 "579f684b9c02495970f7c770d1c49620c9c8dc9c59b3e71539f31687295e6e63"
	end

	on_intel do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v0.12.4/versatiles-macos-x86_64.tar.gz"
		sha256 "c22e5f4aa9bb1a0ac68cea19ab58ed9fa6606dbc4a83184a7c9aa114ad522e89"
	end

	def install
		bin.install "versatiles"
	end
end
