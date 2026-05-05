class Versatiles < Formula
	desc "A toolbox for converting, checking and serving map tiles in various formats."
	homepage "https://github.com/versatiles-org/versatiles-rs"
	version "4.0.0"
	license "MIT"

	on_arm do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v4.0.0/versatiles-macos-aarch64.tar.gz"
		sha256 "b7986526a60c8709214ca60fa721d9914463d9e4085968ef6e6ccecc676562ea"
	end

	on_intel do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v4.0.0/versatiles-macos-x86_64.tar.gz"
		sha256 "fdc18a14075bb2e8acdf78d15338433c29705ff5a2c9d66de217462c45431a70"
	end

	def install
		bin.install "versatiles"
	end
end
