class Versatiles < Formula
	desc "A toolbox for converting, checking and serving map tiles in various formats."
	homepage "https://github.com/versatiles-org/versatiles-rs"
	version "3.9.0"
	license "MIT"

	on_arm do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v3.9.0/versatiles-macos-aarch64.tar.gz"
		sha256 "a99ea8640fe9b8e8ff3222f1781b1f75fe73db9c1af81682c3498329396b2351"
	end

	on_intel do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v3.9.0/versatiles-macos-x86_64.tar.gz"
		sha256 "09f434963a8f155a2c51ce8d538b43d512eca423e16521bf407801a7a47aa22b"
	end

	def install
		bin.install "versatiles"
	end
end
