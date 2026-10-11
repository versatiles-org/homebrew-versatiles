class Versatiles < Formula
	desc "A toolbox for converting, checking and serving map tiles in various formats."
	homepage "https://github.com/versatiles-org/versatiles-rs"
	version "5.1.0"
	license "MIT"

	on_arm do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v5.1.0/versatiles-macos-aarch64.tar.gz"
		sha256 "df11d281f97a94a7bb5af967cd0a0ab0dcdbbf88f834b20459a807860f1ddb0e"
	end

	on_intel do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v5.1.0/versatiles-macos-x86_64.tar.gz"
		sha256 "7550d4f7405dfc03a4efeccced71d7a17fc5c3246be926d5b1845efb5c4b7b4f"
	end

	def install
		bin.install "versatiles"
	end
end
