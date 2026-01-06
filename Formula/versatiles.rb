class Versatiles < Formula
	desc "A toolbox for converting, checking and serving map tiles in various formats."
	homepage "https://github.com/versatiles-org/versatiles-rs"
	version "3.1.1"
	license "MIT"

	on_arm do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v3.1.1/versatiles-macos-aarch64.tar.gz"
		sha256 "e84dc7b2e611adebf72469d8b13d0acfd8552df213b6c0736421b3d9e39d635d"
	end

	on_intel do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v3.1.1/versatiles-macos-x86_64.tar.gz"
		sha256 "8f47c47008cc4ee155868ca83d78c0020783886a36e50b405943d9592cd54c7e"
	end

	def install
		bin.install "versatiles"
	end
end
