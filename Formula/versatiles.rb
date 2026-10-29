class Versatiles < Formula
	desc "A toolbox for converting, checking and serving map tiles in various formats."
	homepage "https://github.com/versatiles-org/versatiles-rs"
	version "5.5.0"
	license "MIT"

	on_arm do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v5.5.0/versatiles-macos-aarch64.tar.gz"
		sha256 "3b1ba954374d3fd033564dc59e7fe8d9b0c307670fad04118cd10c88149caab3"
	end

	on_intel do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v5.5.0/versatiles-macos-x86_64.tar.gz"
		sha256 "ba8df61e8c53f931fc851b51ae7e112cd8d696069a4774ac66bb7ab597cb6f1d"
	end

	def install
		bin.install "versatiles"
	end
end
