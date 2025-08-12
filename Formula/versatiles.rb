class Versatiles < Formula
	desc "A toolbox for converting, checking and serving map tiles in various formats."
	homepage "https://github.com/versatiles-org/versatiles-rs"
	version "0.15.7"
	license "MIT"

	on_arm do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v0.15.7/versatiles-macos-aarch64.tar.gz"
		sha256 "615a3ebaa6b2a82261727824ae1d53f1042ef17c7544067802a176c76914ee8d"
	end

	on_intel do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v0.15.7/versatiles-macos-x86_64.tar.gz"
		sha256 "0bb791e8ebabaf943594df142b556e59f939c798aaf37607356d8d526ce94549"
	end

	def install
		bin.install "versatiles"
	end
end
