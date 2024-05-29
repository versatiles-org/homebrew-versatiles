class Versatiles < Formula
	desc "A toolbox for converting, checking and serving map tiles in various formats."
	homepage "https://github.com/versatiles-org/versatiles-rs"
	version "0.11.3"
	license "MIT"

	on_arm do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v0.11.3/versatiles-macos-aarch64.tar.gz"
		sha256 "d399076d2e1d8365d0d384d890f46851e7bfe363a1c645eac96d6e7dc8ba06dc"
	end

	on_intel do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v0.11.3/versatiles-macos-x86_64.tar.gz"
		sha256 "3fd3672d931c96b9478c982385d7e50b0a189e21a990563c9070a5cfe1c84362"
	end

	def install
		bin.install "versatiles"
	end
end
