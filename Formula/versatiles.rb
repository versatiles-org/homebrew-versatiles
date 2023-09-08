class Versatiles < Formula
	desc "A toolbox for converting, checking and serving map tiles in various formats."
	homepage "https://github.com/versatiles-org/versatiles-rs"
	version "0.6.2"
	license "MIT"

	on_arm do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v0.6.2/versatiles-macos-aarch64.tar.gz"
		sha256 "2a2db79c2312bf16ec75e2994b0ceea7ec9fe3dceda81b8af192d72c9032d03b"
	end

	on_intel do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v0.6.2/versatiles-macos-x86_64.tar.gz"
		sha256 "13ff245d9b6e120c646a088766c6c6f05683d944cb7e7cc7e7e78547e03abb9a"
	end

	def install
		bin.install "versatiles"
	end
end