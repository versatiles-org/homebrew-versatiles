class Versatiles < Formula
	desc "A toolbox for converting, checking and serving map tiles in various formats."
	homepage "https://github.com/versatiles-org/versatiles-rs"
	version "5.15.0"
	license "MIT"

	on_arm do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v5.15.0/versatiles-macos-aarch64.tar.gz"
		sha256 "b05a5bc7b9d466e30c081ddc2297f3e607bdd0057078aaa105f8438abc506025"
	end

	on_intel do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v5.15.0/versatiles-macos-x86_64.tar.gz"
		sha256 "ea64bd8b1c9f882d60337afa82921118b28eb0374fc455044ab70996fd1afc16"
	end

	def install
		bin.install "versatiles"
	end
end
