class Versatiles < Formula
	desc "A toolbox for converting, checking and serving map tiles in various formats."
	homepage "https://github.com/versatiles-org/versatiles-rs"
	version "2.0.0"
	license "MIT"

	on_arm do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v2.0.0/versatiles-macos-aarch64.tar.gz"
		sha256 "1d0096a908493ce5b60347b236b59fe01f715541569e47c3ab85e9c47a506bdf"
	end

	on_intel do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v2.0.0/versatiles-macos-x86_64.tar.gz"
		sha256 "f9fe74663cb989d117beee4a9e64a96037c34728c88124d1167addfb56887583"
	end

	def install
		bin.install "versatiles"
	end
end
