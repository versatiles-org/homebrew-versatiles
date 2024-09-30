class Versatiles < Formula
	desc "A toolbox for converting, checking and serving map tiles in various formats."
	homepage "https://github.com/versatiles-org/versatiles-rs"
	version "0.12.8"
	license "MIT"

	on_arm do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v0.12.8/versatiles-macos-aarch64.tar.gz"
		sha256 "26fd717789e76670477d038eb49b1871148817ada0c280b45196a7c062e0a1df"
	end

	on_intel do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v0.12.8/versatiles-macos-x86_64.tar.gz"
		sha256 "062e86e150d3cb8c5e17139a3bfe2eca8e2e39a16618074e15711ede94a0fe88"
	end

	def install
		bin.install "versatiles"
	end
end
