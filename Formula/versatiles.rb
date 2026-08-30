class Versatiles < Formula
	desc "A toolbox for converting, checking and serving map tiles in various formats."
	homepage "https://github.com/versatiles-org/versatiles-rs"
	version "4.12.2"
	license "MIT"

	on_arm do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v4.12.2/versatiles-macos-aarch64.tar.gz"
		sha256 "97076d8c681cb4154ccbf3fef0138fce40a857136f09487152f914b51af28c6c"
	end

	on_intel do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v4.12.2/versatiles-macos-x86_64.tar.gz"
		sha256 "45cca57d2aa601d6d478bc8a95c05db93fd798f95e3b848b65cfe217572b41ae"
	end

	def install
		bin.install "versatiles"
	end
end
