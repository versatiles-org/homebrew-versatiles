class Versatiles < Formula
	desc "A toolbox for converting, checking and serving map tiles in various formats."
	homepage "https://github.com/versatiles-org/versatiles-rs"
	version "4.5.0"
	license "MIT"

	on_arm do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v4.5.0/versatiles-macos-aarch64.tar.gz"
		sha256 "099de8cbb96871d415e69b82e3af665c55a9bd222a98559e579931922bca5438"
	end

	on_intel do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v4.5.0/versatiles-macos-x86_64.tar.gz"
		sha256 "8c254bb004178a602125d2607e397dc69cc374529607f529f53ab2469d90cfe1"
	end

	def install
		bin.install "versatiles"
	end
end
