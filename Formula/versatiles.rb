class Versatiles < Formula
	desc "A toolbox for converting, checking and serving map tiles in various formats."
	homepage "https://github.com/versatiles-org/versatiles-rs"
	version "4.12.3"
	license "MIT"

	on_arm do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v4.12.3/versatiles-macos-aarch64.tar.gz"
		sha256 "0796d7d7ad16c5910f6133d3ce8060550ba4497d69f864a93ee3580bc8de5fba"
	end

	on_intel do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v4.12.3/versatiles-macos-x86_64.tar.gz"
		sha256 "ac1be01e7440daeeefd5ad6eafd2dd68869175a067e24a55e73d0ddb1461b51a"
	end

	def install
		bin.install "versatiles"
	end
end
