class Versatiles < Formula
	desc "A toolbox for converting, checking and serving map tiles in various formats."
	homepage "https://github.com/versatiles-org/versatiles-rs"
	version "5.12.0"
	license "MIT"

	on_arm do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v5.12.0/versatiles-macos-aarch64.tar.gz"
		sha256 "a1c868ba525fb45db8cafc70860537d542a079781f0064db5f569ff0a17b1f42"
	end

	on_intel do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v5.12.0/versatiles-macos-x86_64.tar.gz"
		sha256 "5d182e6720669dedf6b2635eb282270a91b12bf4553e35b0821226ccdf99fba6"
	end

	def install
		bin.install "versatiles"
	end
end
