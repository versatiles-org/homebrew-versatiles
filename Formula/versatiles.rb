class Versatiles < Formula
	desc "A toolbox for converting, checking and serving map tiles in various formats."
	homepage "https://github.com/versatiles-org/versatiles-rs"
	version "0.6.8"
	license "MIT"

	on_arm do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v0.6.8/versatiles-macos-aarch64.tar.gz"
		sha256 "196966cc3c8e8ca7f66e41a1eda15ce11df5e3034e5f65c11908f457e051bd59"
	end

	on_intel do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v0.6.8/versatiles-macos-x86_64.tar.gz"
		sha256 "bd565a718ac8f0c661144f8b97fd61b760c68004d6f115d70563bc43fefaa2ae"
	end

	def install
		bin.install "versatiles"
	end
end
