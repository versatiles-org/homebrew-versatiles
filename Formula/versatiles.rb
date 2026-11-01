class Versatiles < Formula
	desc "A toolbox for converting, checking and serving map tiles in various formats."
	homepage "https://github.com/versatiles-org/versatiles-rs"
	version "5.6.0"
	license "MIT"

	on_arm do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v5.6.0/versatiles-macos-aarch64.tar.gz"
		sha256 "a51dc94e086bca42260a89d7ae0260b67b075ed623103d72b698bcf857d8b2a7"
	end

	on_intel do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v5.6.0/versatiles-macos-x86_64.tar.gz"
		sha256 "6b40759b61044b70884eada5535d0a74635a7bb00593959fb590e307cd485960"
	end

	def install
		bin.install "versatiles"
	end
end
