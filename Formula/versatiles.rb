class Versatiles < Formula
	desc "A toolbox for converting, checking and serving map tiles in various formats."
	homepage "https://github.com/versatiles-org/versatiles-rs"
	version "3.6.1"
	license "MIT"

	on_arm do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v3.6.1/versatiles-macos-aarch64.tar.gz"
		sha256 "c630f4edfe158eaba4b4b1dcf6b89450eb89b442cb9990723d9e812520f58fd7"
	end

	on_intel do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v3.6.1/versatiles-macos-x86_64.tar.gz"
		sha256 "93276a2eb4d9172805488200b08aa4978fcaff4befec03123f1703ac6fcb1a6e"
	end

	def install
		bin.install "versatiles"
	end
end
