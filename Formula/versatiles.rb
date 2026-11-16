class Versatiles < Formula
	desc "A toolbox for converting, checking and serving map tiles in various formats."
	homepage "https://github.com/versatiles-org/versatiles-rs"
	version "5.13.0"
	license "MIT"

	on_arm do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v5.13.0/versatiles-macos-aarch64.tar.gz"
		sha256 "a3a4a5978f3d372f40e44ad45b59264fbc88350aa587590d6c93684ec11d213b"
	end

	on_intel do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v5.13.0/versatiles-macos-x86_64.tar.gz"
		sha256 "460d1c726e76c87e1a2c42f5f3f2c775020228a0545e36f3b4f1d54f4bbbae75"
	end

	def install
		bin.install "versatiles"
	end
end
