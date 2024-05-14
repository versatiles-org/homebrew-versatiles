class Versatiles < Formula
	desc "A toolbox for converting, checking and serving map tiles in various formats."
	homepage "https://github.com/versatiles-org/versatiles-rs"
	version "0.9.0"
	license "MIT"

	on_arm do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v0.9.0/versatiles-macos-aarch64.tar.gz"
		sha256 "f8ea1009c41b1acee6eef4c486571747f0601cf7cfec6207f8edc0bb626c87fd"
	end

	on_intel do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v0.9.0/versatiles-macos-x86_64.tar.gz"
		sha256 "60cfba4f60932a332ed724a4e1bb09626a76b6bd30f24a49c5e4ea70d7323893"
	end

	def install
		bin.install "versatiles"
	end
end
