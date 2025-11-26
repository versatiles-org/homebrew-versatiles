class Versatiles < Formula
	desc "A toolbox for converting, checking and serving map tiles in various formats."
	homepage "https://github.com/versatiles-org/versatiles-rs"
	version "2.3.0"
	license "MIT"

	on_arm do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v2.3.0/versatiles-macos-aarch64.tar.gz"
		sha256 "b460c335e534888d5be1ce8dd44768e9663bb28ec01c51868b4ff856c838dfce"
	end

	on_intel do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v2.3.0/versatiles-macos-x86_64.tar.gz"
		sha256 "c246ff18dfb190169854b8fed83b8793f15bb94372abbcd282d3b3ada5b92fa8"
	end

	def install
		bin.install "versatiles"
	end
end
