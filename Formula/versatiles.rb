class Versatiles < Formula
	desc "A toolbox for converting, checking and serving map tiles in various formats."
	homepage "https://github.com/versatiles-org/versatiles-rs"
	version "0.8.0"
	license "MIT"

	on_arm do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v0.8.0/versatiles-macos-aarch64.tar.gz"
		sha256 "d55ad068c645c0b70088af947a928fada19f4f8ed1853788eae4b0fb074b3728"
	end

	on_intel do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v0.8.0/versatiles-macos-x86_64.tar.gz"
		sha256 "d75c19d5d7817fdfe27d3ee727f45ba38ee8be52194af58ec17d62501815dc1a"
	end

	def install
		bin.install "versatiles"
	end
end
