class Versatiles < Formula
	desc "A toolbox for converting, checking and serving map tiles in various formats."
	homepage "https://github.com/versatiles-org/versatiles-rs"
	version "3.7.1"
	license "MIT"

	on_arm do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v3.7.1/versatiles-macos-aarch64.tar.gz"
		sha256 "504e8f9a910d23fd0aa1835a0b28e4041b9b6feaac8978d362c0384f92b04f4f"
	end

	on_intel do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v3.7.1/versatiles-macos-x86_64.tar.gz"
		sha256 "7a0966fe9772ab43d1086e9a9ad54b94fad0ed8cb83ab12a69b7eae83a71857b"
	end

	def install
		bin.install "versatiles"
	end
end
