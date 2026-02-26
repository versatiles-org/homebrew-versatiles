class Versatiles < Formula
	desc "A toolbox for converting, checking and serving map tiles in various formats."
	homepage "https://github.com/versatiles-org/versatiles-rs"
	version "3.7.0"
	license "MIT"

	on_arm do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v3.7.0/versatiles-macos-aarch64.tar.gz"
		sha256 "8bdde067361ccc2c37550fc217d0772d4d6b42bf4049b939db77e6ca8be82625"
	end

	on_intel do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v3.7.0/versatiles-macos-x86_64.tar.gz"
		sha256 "1b413d11d71876232c477b99ffceaf52a2de4fcc4b0014dd1651e2da0c7b5d98"
	end

	def install
		bin.install "versatiles"
	end
end
