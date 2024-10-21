class Versatiles < Formula
	desc "A toolbox for converting, checking and serving map tiles in various formats."
	homepage "https://github.com/versatiles-org/versatiles-rs"
	version "0.12.9"
	license "MIT"

	on_arm do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v0.12.9/versatiles-macos-aarch64.tar.gz"
		sha256 "d9ffe0a2d1c7b2bc3bc05116aa677889a12b06819163af4a88d17068e2e0de0f"
	end

	on_intel do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v0.12.9/versatiles-macos-x86_64.tar.gz"
		sha256 "aa47c76ed4c73a23d653414a6f6ca94cdfc5a476e4d1b16136649b933e698374"
	end

	def install
		bin.install "versatiles"
	end
end
