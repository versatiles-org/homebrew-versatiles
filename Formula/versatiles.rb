class Versatiles < Formula
	desc "A toolbox for converting, checking and serving map tiles in various formats."
	homepage "https://github.com/versatiles-org/versatiles-rs"
	version "3.4.0"
	license "MIT"

	on_arm do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v3.4.0/versatiles-macos-aarch64.tar.gz"
		sha256 "b75ffde2b6d19f7b32fbce35ede78f5dc334eb6ca01b11097d7bef8eb1e9e370"
	end

	on_intel do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v3.4.0/versatiles-macos-x86_64.tar.gz"
		sha256 "88f9ff1b0407a771b80100307c73647f44b342388a7c48906b8080ce7a401205"
	end

	def install
		bin.install "versatiles"
	end
end
