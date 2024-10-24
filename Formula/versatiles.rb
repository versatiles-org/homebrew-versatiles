class Versatiles < Formula
	desc "A toolbox for converting, checking and serving map tiles in various formats."
	homepage "https://github.com/versatiles-org/versatiles-rs"
	version "0.12.10"
	license "MIT"

	on_arm do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v0.12.10/versatiles-macos-aarch64.tar.gz"
		sha256 "6c75d6dc66395170d95c5e880294e7d010659df2fc4cf87129663dcca3f25902"
	end

	on_intel do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v0.12.10/versatiles-macos-x86_64.tar.gz"
		sha256 "fe2e19d0e61ee705592ba4a131fdab7e10198ab63dc547f2d0669e4e3b49503d"
	end

	def install
		bin.install "versatiles"
	end
end
