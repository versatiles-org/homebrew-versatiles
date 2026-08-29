class Versatiles < Formula
	desc "A toolbox for converting, checking and serving map tiles in various formats."
	homepage "https://github.com/versatiles-org/versatiles-rs"
	version "4.12.1"
	license "MIT"

	on_arm do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v4.12.1/versatiles-macos-aarch64.tar.gz"
		sha256 "7a07f071337c2953ceb16d18b125868baed479e103baa109f6a58c159712d198"
	end

	on_intel do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v4.12.1/versatiles-macos-x86_64.tar.gz"
		sha256 "21e953f3245ab0785ff092e217b9802e41f38e200182cba6b7bb176d459054d4"
	end

	def install
		bin.install "versatiles"
	end
end
