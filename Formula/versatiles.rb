class Versatiles < Formula
	desc "A toolbox for converting, checking and serving map tiles in various formats."
	homepage "https://github.com/versatiles-org/versatiles-rs"
	version "5.4.0"
	license "MIT"

	on_arm do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v5.4.0/versatiles-macos-aarch64.tar.gz"
		sha256 "1bd60d25f769cfaf46aa1df5775788b02486fae2a90203dd87c2335f136edbe8"
	end

	on_intel do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v5.4.0/versatiles-macos-x86_64.tar.gz"
		sha256 "16bb26fab1f332f4318381fe4d6e4780d8511220d769de5f2b264a3a15f593ff"
	end

	def install
		bin.install "versatiles"
	end
end
