class Versatiles < Formula
	desc "A toolbox for converting, checking and serving map tiles in various formats."
	homepage "https://github.com/versatiles-org/versatiles-rs"
	version "4.12.0"
	license "MIT"

	on_arm do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v4.12.0/versatiles-macos-aarch64.tar.gz"
		sha256 "907d2a98313b1baee3104e5375b1ab4ab41e29bbf0d9fcb263fa5d643947624a"
	end

	on_intel do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v4.12.0/versatiles-macos-x86_64.tar.gz"
		sha256 "0c49251954a3997876c1be332b4c896a3a019812034a9774cc77e93ef8374ffa"
	end

	def install
		bin.install "versatiles"
	end
end
