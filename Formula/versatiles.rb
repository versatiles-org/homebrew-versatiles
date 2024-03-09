class Versatiles < Formula
	desc "A toolbox for converting, checking and serving map tiles in various formats."
	homepage "https://github.com/versatiles-org/versatiles-rs"
	version "0.7.0"
	license "MIT"

	on_arm do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v0.7.0/versatiles-macos-aarch64.tar.gz"
		sha256 "adc9728048395cdc2cca43f84ee720ea48868a96384b1e60d5fb7f4deba5c223"
	end

	on_intel do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v0.7.0/versatiles-macos-x86_64.tar.gz"
		sha256 "833e3f4cb628767b94bdf0e5f207abc7657b89a30ef2721b7b56f9d36cc6ce14"
	end

	def install
		bin.install "versatiles"
	end
end
