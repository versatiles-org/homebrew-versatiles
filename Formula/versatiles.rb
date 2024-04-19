class Versatiles < Formula
	desc "A toolbox for converting, checking and serving map tiles in various formats."
	homepage "https://github.com/versatiles-org/versatiles-rs"
	version "0.7.3"
	license "MIT"

	on_arm do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v0.7.3/versatiles-macos-aarch64.tar.gz"
		sha256 "e9ee7ec284735e5e69df7cd01eb3f39fe07f1dc3078869eb1bc63444d24ec6ac"
	end

	on_intel do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v0.7.3/versatiles-macos-x86_64.tar.gz"
		sha256 "0353bb9747c2da8ff47f0d6722ba710b0ec410a1cb7064800c75f43f8801162a"
	end

	def install
		bin.install "versatiles"
	end
end
