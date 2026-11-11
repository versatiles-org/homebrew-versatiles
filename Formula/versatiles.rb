class Versatiles < Formula
	desc "A toolbox for converting, checking and serving map tiles in various formats."
	homepage "https://github.com/versatiles-org/versatiles-rs"
	version "5.10.0"
	license "MIT"

	on_arm do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v5.10.0/versatiles-macos-aarch64.tar.gz"
		sha256 "3e8a5d9b69c58dd5c8c5ae30bdf4ab7e61684ff7495c487e1cb427b15dabcfe8"
	end

	on_intel do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v5.10.0/versatiles-macos-x86_64.tar.gz"
		sha256 "2f3c03ef3428331e0dfeeba2a2cc97b18b1e41ba4d08c885f3f6496426285541"
	end

	def install
		bin.install "versatiles"
	end
end
