class Versatiles < Formula
	desc "A toolbox for converting, checking and serving map tiles in various formats."
	homepage "https://github.com/versatiles-org/versatiles-rs"
	version "4.7.0"
	license "MIT"

	on_arm do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v4.7.0/versatiles-macos-aarch64.tar.gz"
		sha256 "4d959ccbc38fdb4d395e6340fadca2f1f0f29f502ea8ac95ec363978c50324ad"
	end

	on_intel do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v4.7.0/versatiles-macos-x86_64.tar.gz"
		sha256 "0dc7d4e946ea2605f084bf7cfa90186965e0f65ae236fc040b6d3e930a936cd7"
	end

	def install
		bin.install "versatiles"
	end
end
