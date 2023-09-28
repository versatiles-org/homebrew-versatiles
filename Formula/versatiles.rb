class Versatiles < Formula
	desc "A toolbox for converting, checking and serving map tiles in various formats."
	homepage "https://github.com/versatiles-org/versatiles-rs"
	version "0.6.7"
	license "MIT"

	on_arm do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v0.6.7/versatiles-macos-aarch64.tar.gz"
		sha256 "99bb30d5d05ac0b2e8643b34c337443bde0d1194bff762f6ccdf760363297ba7"
	end

	on_intel do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v0.6.7/versatiles-macos-x86_64.tar.gz"
		sha256 "3fcdb5a431cd2dd34f194f2eb8aa4eee835a6146021f86edafd7833234769fba"
	end

	def install
		bin.install "versatiles"
	end
end
