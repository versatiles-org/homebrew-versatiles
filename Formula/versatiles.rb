class Versatiles < Formula
	desc "A toolbox for converting, checking and serving map tiles in various formats."
	homepage "https://github.com/versatiles-org/versatiles-rs"
	version "4.1.1"
	license "MIT"

	on_arm do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v4.1.1/versatiles-macos-aarch64.tar.gz"
		sha256 "589a06c1a88d4bd6cfa27e5f4fffbeee4d3dcc645b3ba91a042553cdf771154f"
	end

	on_intel do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v4.1.1/versatiles-macos-x86_64.tar.gz"
		sha256 "eedb7f98290e81a4e56d7d44f8d02cb71465020c558733dcc26b17cc61c83cb0"
	end

	def install
		bin.install "versatiles"
	end
end
