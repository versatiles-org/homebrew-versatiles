class Versatiles < Formula
	desc "A toolbox for converting, checking and serving map tiles in various formats."
	homepage "https://github.com/versatiles-org/versatiles-rs"
	version "5.16.0"
	license "MIT"

	on_arm do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v5.16.0/versatiles-macos-aarch64.tar.gz"
		sha256 "fa9350e96de14867626b8ac56ab1a2c4bb3628cfc2e511c4ac69f670243d6b58"
	end

	on_intel do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v5.16.0/versatiles-macos-x86_64.tar.gz"
		sha256 "e3ec985c9ad10d08c22f14458c889dc2090536582e05cb623375366e656e198d"
	end

	def install
		bin.install "versatiles"
	end
end
