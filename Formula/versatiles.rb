class Versatiles < Formula
	desc "A toolbox for converting, checking and serving map tiles in various formats."
	homepage "https://github.com/versatiles-org/versatiles-rs"
	version "5.7.0"
	license "MIT"

	on_arm do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v5.7.0/versatiles-macos-aarch64.tar.gz"
		sha256 "ff8098a5d73503c4125e4c9b734b61c65fdf7bad992540acd3fedde79cfa76a6"
	end

	on_intel do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v5.7.0/versatiles-macos-x86_64.tar.gz"
		sha256 "f3f033550b863de34c407673f854bd4a8bb0ef30cd380e191748a3f9d1c80f59"
	end

	def install
		bin.install "versatiles"
	end
end
