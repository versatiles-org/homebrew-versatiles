class Versatiles < Formula
	desc "A toolbox for converting, checking and serving map tiles in various formats."
	homepage "https://github.com/versatiles-org/versatiles-rs"
	version "0.12.3"
	license "MIT"

	on_arm do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v0.12.3/versatiles-macos-aarch64.tar.gz"
		sha256 "c89f3da9679446ff4796709dd0a41f5aadcd0dfc5cc6c23749c87e54c07a3fd6"
	end

	on_intel do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v0.12.3/versatiles-macos-x86_64.tar.gz"
		sha256 "5ba18928090fbc32ad715dc294918e575b5a6583cbfc9fb834c93435abc95c9b"
	end

	def install
		bin.install "versatiles"
	end
end
