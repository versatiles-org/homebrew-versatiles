class Versatiles < Formula
	desc "A toolbox for converting, checking and serving map tiles in various formats."
	homepage "https://github.com/versatiles-org/versatiles-rs"
	version "4.13.0"
	license "MIT"

	on_arm do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v4.13.0/versatiles-macos-aarch64.tar.gz"
		sha256 "fbc57cbbcadcb59d3485243ce167afd75ba341c04ac015049d03f95e5cae2b15"
	end

	on_intel do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v4.13.0/versatiles-macos-x86_64.tar.gz"
		sha256 "9a0e1d62d35fe44ddfebab8b143b94402ed53162190c139c2ed452c23e0989b1"
	end

	def install
		bin.install "versatiles"
	end
end
