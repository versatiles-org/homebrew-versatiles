class Versatiles < Formula
	desc "A toolbox for converting, checking and serving map tiles in various formats."
	homepage "https://github.com/versatiles-org/versatiles-rs"
	version "0.6.7"
	license "MIT"

	on_arm do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v0.6.7/versatiles-macos-aarch64.tar.gz"
		sha256 "Not Found"
	end

	on_intel do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v0.6.7/versatiles-macos-x86_64.tar.gz"
		sha256 "Not Found"
	end

	def install
		bin.install "versatiles"
	end
end
