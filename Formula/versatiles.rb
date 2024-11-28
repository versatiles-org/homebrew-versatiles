class Versatiles < Formula
	desc "A toolbox for converting, checking and serving map tiles in various formats."
	homepage "https://github.com/versatiles-org/versatiles-rs"
	version "0.14.3"
	license "MIT"

	on_arm do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v0.14.3/versatiles-macos-aarch64.tar.gz"
		sha256 "7665ee3913848a51f4b7faa53490a633af3eef3c23db2dffdcd12163cf2b9916"
	end

	on_intel do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v0.14.3/versatiles-macos-x86_64.tar.gz"
		sha256 "d759db8c280dbbddf42a6ae6a8c7b8c730e95363a62cb959040c011b6a1b4594"
	end

	def install
		bin.install "versatiles"
	end
end
