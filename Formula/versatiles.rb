class Versatiles < Formula
	desc "A toolbox for converting, checking and serving map tiles in various formats."
	homepage "https://github.com/versatiles-org/versatiles-rs"
	version "3.5.0"
	license "MIT"

	on_arm do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v3.5.0/versatiles-macos-aarch64.tar.gz"
		sha256 "dc72c28e46de21a53c47c0c6ff997469a19561e8528de09782dcc8bc71ae0c83"
	end

	on_intel do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v3.5.0/versatiles-macos-x86_64.tar.gz"
		sha256 "3ebb74503fe4a5a7a0460588eca2ea1abb5b7a90fc24ca9a414fbe2553bdd3e2"
	end

	def install
		bin.install "versatiles"
	end
end
