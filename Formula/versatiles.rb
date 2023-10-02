class Versatiles < Formula
	desc "A toolbox for converting, checking and serving map tiles in various formats."
	homepage "https://github.com/versatiles-org/versatiles-rs"
	version "0.6.9"
	license "MIT"

	on_arm do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v0.6.9/versatiles-macos-aarch64.tar.gz"
		sha256 "84eb5881010f2f9abe64e40a020bbc3671317e2d72c4b96ae11f5f0a71e1e721"
	end

	on_intel do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v0.6.9/versatiles-macos-x86_64.tar.gz"
		sha256 "e8fe09f22864d877549c1121e5af2dd6899350c13de966705777a3845dad36bd"
	end

	def install
		bin.install "versatiles"
	end
end
