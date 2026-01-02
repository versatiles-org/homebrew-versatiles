class Versatiles < Formula
	desc "A toolbox for converting, checking and serving map tiles in various formats."
	homepage "https://github.com/versatiles-org/versatiles-rs"
	version "3.0.3"
	license "MIT"

	on_arm do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v3.0.3/versatiles-macos-aarch64.tar.gz"
		sha256 "4c0521a9d29ef0422cb83b99bc3c7b2172c9c746a5a60e5051abe3ecf0b9afd7"
	end

	on_intel do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v3.0.3/versatiles-macos-x86_64.tar.gz"
		sha256 "173caae7d8619bad832faf67b3ff1dd2969cd85f428ee27279437665940bf9e3"
	end

	def install
		bin.install "versatiles"
	end
end
