class Versatiles < Formula
	desc "A toolbox for converting, checking and serving map tiles in various formats."
	homepage "https://github.com/versatiles-org/versatiles-rs"
	version "3.0.2"
	license "MIT"

	on_arm do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v3.0.2/versatiles-macos-aarch64.tar.gz"
		sha256 "abe61576a9bd2b88c77870be7cf1b89aaed2eb576e36af99a638a95dd6673333"
	end

	on_intel do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v3.0.2/versatiles-macos-x86_64.tar.gz"
		sha256 "e9ee11e22a91588364bb2a1ff5de12f1a884b77784b37cd8994fdbe890de145a"
	end

	def install
		bin.install "versatiles"
	end
end
