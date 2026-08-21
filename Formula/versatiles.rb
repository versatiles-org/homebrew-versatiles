class Versatiles < Formula
	desc "A toolbox for converting, checking and serving map tiles in various formats."
	homepage "https://github.com/versatiles-org/versatiles-rs"
	version "4.9.1"
	license "MIT"

	on_arm do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v4.9.1/versatiles-macos-aarch64.tar.gz"
		sha256 "96e7613c8fb64ba1c2ab1b8aceefdb4929e21b6170765a945a15f9e3c6bc4188"
	end

	on_intel do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v4.9.1/versatiles-macos-x86_64.tar.gz"
		sha256 "93ea43266afe02dab8578552312246a80cdc608ae10f094583e94bcd1e3e3261"
	end

	def install
		bin.install "versatiles"
	end
end
