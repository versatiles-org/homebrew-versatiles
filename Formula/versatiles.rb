class Versatiles < Formula
	desc "A toolbox for converting, checking and serving map tiles in various formats."
	homepage "https://github.com/versatiles-org/versatiles-rs"
	version "0.7.1"
	license "MIT"

	on_arm do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v0.7.1/versatiles-macos-aarch64.tar.gz"
		sha256 "8a6f0c7bf6b349c2e80ee695682dfd1d24aa93979c6be546d3b5b9b17e9031f4"
	end

	on_intel do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v0.7.1/versatiles-macos-x86_64.tar.gz"
		sha256 "79c0689236628e7d3dfa5c4b1211595354913f6da20a333d11831864371672cf"
	end

	def install
		bin.install "versatiles"
	end
end
