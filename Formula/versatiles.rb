class Versatiles < Formula
	desc "A toolbox for converting, checking and serving map tiles in various formats."
	homepage "https://github.com/versatiles-org/versatiles-rs"
	version "0.10.1"
	license "MIT"

	on_arm do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v0.10.1/versatiles-macos-aarch64.tar.gz"
		sha256 "370540bd2921dc1ffdb1504233edf682bf6a739035fa5e613ddca414445d626f"
	end

	on_intel do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v0.10.1/versatiles-macos-x86_64.tar.gz"
		sha256 "d66f32cb8134222d3012cd26a68c87e6a566ece80b146bb30b85433ec109308a"
	end

	def install
		bin.install "versatiles"
	end
end
