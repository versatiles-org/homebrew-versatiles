class Versatiles < Formula
	desc "A toolbox for converting, checking and serving map tiles in various formats."
	homepage "https://github.com/versatiles-org/versatiles-rs"
	version "4.6.1"
	license "MIT"

	on_arm do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v4.6.1/versatiles-macos-aarch64.tar.gz"
		sha256 "724a2d5869ba642bc2b17b9dcc2a1dad3e6cbde3e05a3ddb2a5dcd768fa27f31"
	end

	on_intel do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v4.6.1/versatiles-macos-x86_64.tar.gz"
		sha256 "e80c79fa7686aa63ccf232b495aadc24e6de093c248c198c432368dcbc51e3c2"
	end

	def install
		bin.install "versatiles"
	end
end
