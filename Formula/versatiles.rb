class Versatiles < Formula
	desc "A toolbox for converting, checking and serving map tiles in various formats."
	homepage "https://github.com/versatiles-org/versatiles-rs"
	version "3.0.4"
	license "MIT"

	on_arm do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v3.0.4/versatiles-macos-aarch64.tar.gz"
		sha256 "c4067f9fe2b02b6e8ed9acea8eb5285f6761c7f127dd2df67b9f0d0cf3b73f46"
	end

	on_intel do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v3.0.4/versatiles-macos-x86_64.tar.gz"
		sha256 "80d8bc28caa8f62ce182c60e20ec6f3dac30ec520a798261e0404bac826e9cc4"
	end

	def install
		bin.install "versatiles"
	end
end
