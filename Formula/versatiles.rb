class Versatiles < Formula
	desc "A toolbox for converting, checking and serving map tiles in various formats."
	homepage "https://github.com/versatiles-org/versatiles-rs"
	version "0.15.2"
	license "MIT"

	on_arm do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v0.15.2/versatiles-macos-aarch64.tar.gz"
		sha256 "7c9c062a8be01ea3bfffa9f178ba5e08f99c771890106519a1d79031dbfbee56"
	end

	on_intel do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v0.15.2/versatiles-macos-x86_64.tar.gz"
		sha256 "3ce0c4b553e1c25036cbea01e6154a54d4eb215cb40c5e894bda78fe12702a0b"
	end

	def install
		bin.install "versatiles"
	end
end
