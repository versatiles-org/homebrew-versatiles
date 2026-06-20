class Versatiles < Formula
	desc "A toolbox for converting, checking and serving map tiles in various formats."
	homepage "https://github.com/versatiles-org/versatiles-rs"
	version "4.3.0"
	license "MIT"

	on_arm do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v4.3.0/versatiles-macos-aarch64.tar.gz"
		sha256 "642c15e2f9ac5ba775953a9933b0b675d3ca711c8672c087d4210df7e2483cbf"
	end

	on_intel do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v4.3.0/versatiles-macos-x86_64.tar.gz"
		sha256 "6e551241b14ed0898a6f96a3c4c6652aad7739a8ea89a777738aa7a993dcece8"
	end

	def install
		bin.install "versatiles"
	end
end
