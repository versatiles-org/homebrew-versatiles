class Versatiles < Formula
	desc "A toolbox for converting, checking and serving map tiles in various formats."
	homepage "https://github.com/versatiles-org/versatiles-rs"
	version "0.15.4"
	license "MIT"

	on_arm do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v0.15.4/versatiles-macos-aarch64.tar.gz"
		sha256 "145093479a54b8a11f409caeedc65536b42986681a1c5d4c6989d4ba3b35cb48"
	end

	on_intel do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v0.15.4/versatiles-macos-x86_64.tar.gz"
		sha256 "f959b65dfdfe8a5fdf5bff47f9eec0e28a5c65bef7be6350dd842cf6137f3494"
	end

	def install
		bin.install "versatiles"
	end
end
