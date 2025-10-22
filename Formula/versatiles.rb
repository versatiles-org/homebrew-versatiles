class Versatiles < Formula
	desc "A toolbox for converting, checking and serving map tiles in various formats."
	homepage "https://github.com/versatiles-org/versatiles-rs"
	version "1.1.0"
	license "MIT"

	on_arm do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v1.1.0/versatiles-macos-aarch64.tar.gz"
		sha256 "9655cb67b070ffcb692732bd872f1f5a8ecac0f67006ae63a655bd95f6306e38"
	end

	on_intel do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v1.1.0/versatiles-macos-x86_64.tar.gz"
		sha256 "ef35f7e388cee153a1f97b3a295c046bdc20e298fead32fe4258b170311c49a3"
	end

	def install
		bin.install "versatiles"
	end
end
