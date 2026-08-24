class Versatiles < Formula
	desc "A toolbox for converting, checking and serving map tiles in various formats."
	homepage "https://github.com/versatiles-org/versatiles-rs"
	version "4.10.0"
	license "MIT"

	on_arm do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v4.10.0/versatiles-macos-aarch64.tar.gz"
		sha256 "fed6dc9a5d46f49029bb350cd6918100b9dc58b6bfd7d0eaa6895bacaf8ad7e5"
	end

	on_intel do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v4.10.0/versatiles-macos-x86_64.tar.gz"
		sha256 "35032b6ed11b8926578a4aba0d676f422f9442e3019e4d9b56049382b9d2a56e"
	end

	def install
		bin.install "versatiles"
	end
end
