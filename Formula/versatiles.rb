class Versatiles < Formula
	desc "A toolbox for converting, checking and serving map tiles in various formats."
	homepage "https://github.com/versatiles-org/versatiles-rs"
	version "5.0.0"
	license "MIT"

	on_arm do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v5.0.0/versatiles-macos-aarch64.tar.gz"
		sha256 "0637fba99063bf0a1b419f30fe70eec18ebcb2f575239a885ad405a5b02de117"
	end

	on_intel do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v5.0.0/versatiles-macos-x86_64.tar.gz"
		sha256 "868c1a8bb32d4c3a896affddbf2a12db3cdc55053b7ccddb7e5f9334dc01cfe1"
	end

	def install
		bin.install "versatiles"
	end
end
