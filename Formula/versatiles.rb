class Versatiles < Formula
	desc "A toolbox for converting, checking and serving map tiles in various formats."
	homepage "https://github.com/versatiles-org/versatiles-rs"
	version "0.14.2"
	license "MIT"

	on_arm do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v0.14.2/versatiles-macos-aarch64.tar.gz"
		sha256 "6958895f5cec202308114c60b1fa55e42a86bbc5becb959dd116a8f828d65e09"
	end

	on_intel do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v0.14.2/versatiles-macos-x86_64.tar.gz"
		sha256 "48f4230b3b8ae08947703352713f8744c3a93d1d9459ff6208255e2f6f4bf35c"
	end

	def install
		bin.install "versatiles"
	end
end
