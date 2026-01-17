class Versatiles < Formula
	desc "A toolbox for converting, checking and serving map tiles in various formats."
	homepage "https://github.com/versatiles-org/versatiles-rs"
	version "3.2.0"
	license "MIT"

	on_arm do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v3.2.0/versatiles-macos-aarch64.tar.gz"
		sha256 "ec2909220d2748f2f8283f6b5cf3b228fbc714839336c4ab2c1e2d0fc757b0b0"
	end

	on_intel do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v3.2.0/versatiles-macos-x86_64.tar.gz"
		sha256 "57057215904b18eb6389015d9a58265c5833fb8f836ce3de193db396a6a8a12e"
	end

	def install
		bin.install "versatiles"
	end
end
