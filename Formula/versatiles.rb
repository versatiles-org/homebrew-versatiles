class Versatiles < Formula
	desc "A toolbox for converting, checking and serving map tiles in various formats."
	homepage "https://github.com/versatiles-org/versatiles-rs"
	version "5.11.0"
	license "MIT"

	on_arm do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v5.11.0/versatiles-macos-aarch64.tar.gz"
		sha256 "98f81be7f74e9889ef87191d958681dfce41e76db44e2558880a8a01cdda613e"
	end

	on_intel do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v5.11.0/versatiles-macos-x86_64.tar.gz"
		sha256 "7343af66fe1f830c8c7bb74266aa18bbe797b68c8dfca5eba6db8a61581444ba"
	end

	def install
		bin.install "versatiles"
	end
end
