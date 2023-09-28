class Versatiles < Formula
	desc "A toolbox for converting, checking and serving map tiles in various formats."
	homepage "https://github.com/versatiles-org/versatiles-rs"
	version "0.6.8"
	license "MIT"

	on_arm do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v0.6.8/versatiles-macos-aarch64.tar.gz"
		sha256 "d65284e6999b6bb7e132c4aacfe19cbc8628ce7ddca792afa9f1ef096b522536"
	end

	on_intel do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v0.6.8/versatiles-macos-x86_64.tar.gz"
		sha256 "5d138b8bf14455aaacc430cb6f847aefa2ccf05b7bdd683e3b58a2102c7b206f"
	end

	def install
		bin.install "versatiles"
	end
end
