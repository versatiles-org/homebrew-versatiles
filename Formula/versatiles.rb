class Versatiles < Formula
	desc "A toolbox for converting, checking and serving map tiles in various formats."
	homepage "https://github.com/versatiles-org/versatiles-rs"
	version "3.6.2"
	license "MIT"

	on_arm do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v3.6.2/versatiles-macos-aarch64.tar.gz"
		sha256 "95dc738bb01825145c2c8f5388a49f21c797f9451adf4b809f1b0acda30c27c7"
	end

	on_intel do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v3.6.2/versatiles-macos-x86_64.tar.gz"
		sha256 "488649c5658f92f2bcd05e08fa508a7c4a0daa1b42ed603f5e5298a46cc86cd8"
	end

	def install
		bin.install "versatiles"
	end
end
