class Versatiles < Formula
	desc "A toolbox for converting, checking and serving map tiles in various formats."
	homepage "https://github.com/versatiles-org/versatiles-rs"
	version "0.7.2"
	license "MIT"

	on_arm do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v0.7.2/versatiles-macos-aarch64.tar.gz"
		sha256 "9341aecbbc909bef10fcad514d09c3d7c68bcf8f6b68f04c0de33bc68fbf5f23"
	end

	on_intel do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v0.7.2/versatiles-macos-x86_64.tar.gz"
		sha256 "9219dbf13277d9c0d6c0acafd27c2c69cf7225578dea78bb765a316992778213"
	end

	def install
		bin.install "versatiles"
	end
end
