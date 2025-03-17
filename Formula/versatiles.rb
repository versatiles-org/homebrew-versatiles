class Versatiles < Formula
	desc "A toolbox for converting, checking and serving map tiles in various formats."
	homepage "https://github.com/versatiles-org/versatiles-rs"
	version "0.15.3"
	license "MIT"

	on_arm do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v0.15.3/versatiles-macos-aarch64.tar.gz"
		sha256 "1f2d187ec29694c6246de21134846d40cbea9c6e9912075ad93bb02d00fdb714"
	end

	on_intel do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v0.15.3/versatiles-macos-x86_64.tar.gz"
		sha256 "479efe719e5419ccf571942489ceb1e788eafbc707bf3562f67eb06369187822"
	end

	def install
		bin.install "versatiles"
	end
end
