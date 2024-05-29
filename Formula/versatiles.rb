class Versatiles < Formula
	desc "A toolbox for converting, checking and serving map tiles in various formats."
	homepage "https://github.com/versatiles-org/versatiles-rs"
	version "0.11.2"
	license "MIT"

	on_arm do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v0.11.2/versatiles-macos-aarch64.tar.gz"
		sha256 "768ddf8a9027f6d6eead8e69f119465988a0b911e16402a19356d9b1f51ff2ed"
	end

	on_intel do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v0.11.2/versatiles-macos-x86_64.tar.gz"
		sha256 "cf957f7aeccba49f5d5a4ae51a9019a47ce9e2b71e55dfe33e845185c0cdd197"
	end

	def install
		bin.install "versatiles"
	end
end
