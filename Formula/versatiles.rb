class Versatiles < Formula
	desc "A toolbox for converting, checking and serving map tiles in various formats."
	homepage "https://github.com/versatiles-org/versatiles-rs"
	version "0.14.1"
	license "MIT"

	on_arm do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v0.14.1/versatiles-macos-aarch64.tar.gz"
		sha256 "cf431159131408ce6cc6ac11656d59dfc03e84dc5b158eae520aa050e3fd18d1"
	end

	on_intel do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v0.14.1/versatiles-macos-x86_64.tar.gz"
		sha256 "9e3a6e0d39edab34911f08b450dd543ff127b2b1b0cc19d2cde0ef9841b34536"
	end

	def install
		bin.install "versatiles"
	end
end
