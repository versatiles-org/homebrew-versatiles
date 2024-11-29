class Versatiles < Formula
	desc "A toolbox for converting, checking and serving map tiles in various formats."
	homepage "https://github.com/versatiles-org/versatiles-rs"
	version "0.14.4"
	license "MIT"

	on_arm do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v0.14.4/versatiles-macos-aarch64.tar.gz"
		sha256 "6de69883fd521bf7e6cfe9d61ef239aac1307b0c3a321f4becd45fb7035de7dc"
	end

	on_intel do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v0.14.4/versatiles-macos-x86_64.tar.gz"
		sha256 "3528d948e8a342e05ceb759a3a641c2f0d07d32c713d6b9fac9567e956e4a57c"
	end

	def install
		bin.install "versatiles"
	end
end
