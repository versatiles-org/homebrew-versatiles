class Versatiles < Formula
	desc "A toolbox for converting, checking and serving map tiles in various formats."
	homepage "https://github.com/versatiles-org/versatiles-rs"
	version "5.4.1"
	license "MIT"

	on_arm do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v5.4.1/versatiles-macos-aarch64.tar.gz"
		sha256 "c0f73e27ee7f4e613015271d9b02cd7dbe9be4fe238b4fe31a6c9ee8be1b4301"
	end

	on_intel do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v5.4.1/versatiles-macos-x86_64.tar.gz"
		sha256 "2a4cafed2078e84c306629a26ef42e7a659d1fe9485f5d944d3dbfe812cd8698"
	end

	def install
		bin.install "versatiles"
	end
end
