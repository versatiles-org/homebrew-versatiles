class Versatiles < Formula
	desc "A toolbox for converting, checking and serving map tiles in various formats."
	homepage "https://github.com/versatiles-org/versatiles-rs"
	version "0.10.0"
	license "MIT"

	on_arm do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v0.10.0/versatiles-macos-aarch64.tar.gz"
		sha256 "e30b291bd8ee4dfb55ffb7eadd530878648fd953f7bd580f32eab5ad9b53ff44"
	end

	on_intel do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v0.10.0/versatiles-macos-x86_64.tar.gz"
		sha256 "8fd0492478b0e0fc774044b96d3bc6f729c21e8df5f6f0681cec511c2c7c8bf9"
	end

	def install
		bin.install "versatiles"
	end
end
