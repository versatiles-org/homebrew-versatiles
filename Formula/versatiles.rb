class Versatiles < Formula
	desc "A toolbox for converting, checking and serving map tiles in various formats."
	homepage "https://github.com/versatiles-org/versatiles-rs"
	version "3.0.5"
	license "MIT"

	on_arm do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v3.0.5/versatiles-macos-aarch64.tar.gz"
		sha256 "0c0f4b13fc0e161495fae0d5fe8395e97584b68ad144b2c5a2cbecde70749192"
	end

	on_intel do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v3.0.5/versatiles-macos-x86_64.tar.gz"
		sha256 "a11422a2c05c78db2c0e7fcd08342bd7f1a73082ba3ac0b0f410d2eb4d2230a7"
	end

	def install
		bin.install "versatiles"
	end
end
