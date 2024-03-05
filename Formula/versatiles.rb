class Versatiles < Formula
	desc "A toolbox for converting, checking and serving map tiles in various formats."
	homepage "https://github.com/versatiles-org/versatiles-rs"
	version "0.6.12"
	license "MIT"

	on_arm do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v0.6.12/versatiles-macos-aarch64.tar.gz"
		sha256 "8be492785e4bdf9a7c6b0796e5a73d0ef020f314709e6d9fa0c0918824b932d6"
	end

	on_intel do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v0.6.12/versatiles-macos-x86_64.tar.gz"
		sha256 "f570b30dcf2d803fec1a1c1a46f2525cbfe5535e8723906f9d391b7bfead27d7"
	end

	def install
		bin.install "versatiles"
	end
end
