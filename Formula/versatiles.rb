class Versatiles < Formula
	desc "A toolbox for converting, checking and serving map tiles in various formats."
	homepage "https://github.com/versatiles-org/versatiles-rs"
	version "0.15.5"
	license "MIT"

	on_arm do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v0.15.5/versatiles-macos-aarch64.tar.gz"
		sha256 "e2eeb6902cda8d3b1a566c6671e687237e93b3f1db59fcf47575983c85303431"
	end

	on_intel do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v0.15.5/versatiles-macos-x86_64.tar.gz"
		sha256 "2e1a765950e10f68f5ea077ac791b0ebf3e60ee98246a2d06a8ab447e03c407b"
	end

	def install
		bin.install "versatiles"
	end
end
