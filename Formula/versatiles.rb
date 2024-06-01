class Versatiles < Formula
	desc "A toolbox for converting, checking and serving map tiles in various formats."
	homepage "https://github.com/versatiles-org/versatiles-rs"
	version "0.11.4"
	license "MIT"

	on_arm do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v0.11.4/versatiles-macos-aarch64.tar.gz"
		sha256 "2e0c0ce2da547c211b7c01b67d7f36020017bcb1c0437fe30849e95504a8bc81"
	end

	on_intel do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v0.11.4/versatiles-macos-x86_64.tar.gz"
		sha256 "8f6fa50583e5bb0efd4f4b1ab03767c2e1b034597477f3b3aa48557f237f4f25"
	end

	def install
		bin.install "versatiles"
	end
end
