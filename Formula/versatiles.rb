class Versatiles < Formula
	desc "A toolbox for converting, checking and serving map tiles in various formats."
	homepage "https://github.com/versatiles-org/versatiles-rs"
	version "5.3.0"
	license "MIT"

	on_arm do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v5.3.0/versatiles-macos-aarch64.tar.gz"
		sha256 "40e249e8cc284111a1015a5384ff92e0051438b8428be95f14c883f603391dce"
	end

	on_intel do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v5.3.0/versatiles-macos-x86_64.tar.gz"
		sha256 "72ff0f7e7dcb594a20c2559a1875ff0225badfc4596fdeb49c4d5a1410516162"
	end

	def install
		bin.install "versatiles"
	end
end
