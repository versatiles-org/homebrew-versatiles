class Versatiles < Formula
	desc "A toolbox for converting, checking and serving map tiles in various formats."
	homepage "https://github.com/versatiles-org/versatiles-rs"
	version "0.12.6"
	license "MIT"

	on_arm do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v0.12.6/versatiles-macos-aarch64.tar.gz"
		sha256 "cd47a540eb54d452bff1b614ec204927e2b4317d5e96e58ef770af0736702832"
	end

	on_intel do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v0.12.6/versatiles-macos-x86_64.tar.gz"
		sha256 "8936d2b0b4ad3cf000fee259e97cd7ea7342bdf2ddcad01a608d2503bae36ff6"
	end

	def install
		bin.install "versatiles"
	end
end
