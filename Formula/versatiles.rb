class Versatiles < Formula
	desc "A toolbox for converting, checking and serving map tiles in various formats."
	homepage "https://github.com/versatiles-org/versatiles-rs"
	version "2.3.1"
	license "MIT"

	on_arm do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v2.3.1/versatiles-macos-aarch64.tar.gz"
		sha256 "585938a703da988975c7428ce0ab37c314c108610af318a46cea8df029e28824"
	end

	on_intel do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v2.3.1/versatiles-macos-x86_64.tar.gz"
		sha256 "58935495a770bee162f4eb20aa8aa9674991079dc0b7f3f443114f095b504aca"
	end

	def install
		bin.install "versatiles"
	end
end
