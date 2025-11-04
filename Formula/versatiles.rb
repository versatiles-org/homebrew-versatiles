class Versatiles < Formula
	desc "A toolbox for converting, checking and serving map tiles in various formats."
	homepage "https://github.com/versatiles-org/versatiles-rs"
	version "2.1.1"
	license "MIT"

	on_arm do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v2.1.1/versatiles-macos-aarch64.tar.gz"
		sha256 "8ee26f03053892eb2ecff02fe8c71f74334f438dcbb8d20afc129685ee929187"
	end

	on_intel do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v2.1.1/versatiles-macos-x86_64.tar.gz"
		sha256 "7cf8b3866cef7855575a41feba9b198bcaff5c11f27b55c1e88c38f23ababcd7"
	end

	def install
		bin.install "versatiles"
	end
end
