class Versatiles < Formula
	desc "A toolbox for converting, checking and serving map tiles in various formats."
	homepage "https://github.com/versatiles-org/versatiles-rs"
	version "0.15.1"
	license "MIT"

	on_arm do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v0.15.1/versatiles-macos-aarch64.tar.gz"
		sha256 "2684e3793afb56756c6fb7e805e75ad94e0f22bccc1388a7ab915e7ec7526d2c"
	end

	on_intel do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v0.15.1/versatiles-macos-x86_64.tar.gz"
		sha256 "9344f319a8d075aefd8a55a2e94c1f5e695478e09b5ddcb1f401606adb0cb89a"
	end

	def install
		bin.install "versatiles"
	end
end
