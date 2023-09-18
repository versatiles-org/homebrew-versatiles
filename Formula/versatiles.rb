class Versatiles < Formula
	desc "A toolbox for converting, checking and serving map tiles in various formats."
	homepage "https://github.com/versatiles-org/versatiles-rs"
	version "0.6.3"
	license "MIT"

	on_arm do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v0.6.3/versatiles-macos-aarch64.tar.gz"
		sha256 "e20e3dd37599fd2152559f2d19afbb469551012fdcf1dbb4ccdc756265612b40"
	end

	on_intel do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v0.6.3/versatiles-macos-x86_64.tar.gz"
		sha256 "a30baf08f879bde818b3c6cb15b05fee1bac0c9b5ad06aa3ed2052f19b60d5c1"
	end

	def install
		bin.install "versatiles"
	end
end
