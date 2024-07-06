class Versatiles < Formula
	desc "A toolbox for converting, checking and serving map tiles in various formats."
	homepage "https://github.com/versatiles-org/versatiles-rs"
	version "0.12.0"
	license "MIT"

	on_arm do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v0.12.0/versatiles-macos-aarch64.tar.gz"
		sha256 "0ba92ebf353684196c22c0a081e42f92813dad01074f6f1420ca7a29705b5709"
	end

	on_intel do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v0.12.0/versatiles-macos-x86_64.tar.gz"
		sha256 "ed646ac1c0ed229e047228ab33c8bedd3430e519e22c7f89b06988acd4cc0a7e"
	end

	def install
		bin.install "versatiles"
	end
end
