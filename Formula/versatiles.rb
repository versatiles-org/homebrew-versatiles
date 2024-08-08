class Versatiles < Formula
	desc "A toolbox for converting, checking and serving map tiles in various formats."
	homepage "https://github.com/versatiles-org/versatiles-rs"
	version "0.12.5"
	license "MIT"

	on_arm do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v0.12.5/versatiles-macos-aarch64.tar.gz"
		sha256 "58535985b3a59eb07f6de85e5d1ba0594a3a0828d53ade4f2020afd60a047216"
	end

	on_intel do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v0.12.5/versatiles-macos-x86_64.tar.gz"
		sha256 "e590042112b684870088445ae2a16f6c10e10ee520b79706c741ac3c016d1250"
	end

	def install
		bin.install "versatiles"
	end
end
