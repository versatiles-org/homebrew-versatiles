class Versatiles < Formula
	desc "A toolbox for converting, checking and serving map tiles in various formats."
	homepage "https://github.com/versatiles-org/versatiles-rs"
	version "4.14.0"
	license "MIT"

	on_arm do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v4.14.0/versatiles-macos-aarch64.tar.gz"
		sha256 "58c5cc4ea1cf83c78e50ba02559730a1de892598a691a78e47d71b48e34985a9"
	end

	on_intel do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v4.14.0/versatiles-macos-x86_64.tar.gz"
		sha256 "97b352b02a9e1b8bde0ae7a7b07e4ad75b65dd64f7d18a6766e813b57fbf756f"
	end

	def install
		bin.install "versatiles"
	end
end
