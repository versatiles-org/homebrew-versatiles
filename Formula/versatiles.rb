class Versatiles < Formula
	desc "A toolbox for converting, checking and serving map tiles in various formats."
	homepage "https://github.com/versatiles-org/versatiles-rs"
	version "0.14.0"
	license "MIT"

	on_arm do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v0.14.0/versatiles-macos-aarch64.tar.gz"
		sha256 "a512fc0f378eda1721be9734f3049845a39201aadc99dcadb63a2e413762b9d9"
	end

	on_intel do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v0.14.0/versatiles-macos-x86_64.tar.gz"
		sha256 "3a6cf9e15eadfd61434a74c42eee9b7cba98089e5718f4802f990013f9514b61"
	end

	def install
		bin.install "versatiles"
	end
end
