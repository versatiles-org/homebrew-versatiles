class Versatiles < Formula
	desc "A toolbox for converting, checking and serving map tiles in various formats."
	homepage "https://github.com/versatiles-org/versatiles-rs"
	version "5.14.0"
	license "MIT"

	on_arm do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v5.14.0/versatiles-macos-aarch64.tar.gz"
		sha256 "7293e80e3f062338d3f3e4cf9f55a85ad291d6e703459b80776ae7e836f6ea52"
	end

	on_intel do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v5.14.0/versatiles-macos-x86_64.tar.gz"
		sha256 "f50e5a24a9776b9d57eb72b46e86e112fb804b3ff4ad148d6c1f6079a6490ead"
	end

	def install
		bin.install "versatiles"
	end
end
