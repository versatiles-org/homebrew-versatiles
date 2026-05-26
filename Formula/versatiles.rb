class Versatiles < Formula
	desc "A toolbox for converting, checking and serving map tiles in various formats."
	homepage "https://github.com/versatiles-org/versatiles-rs"
	version "4.1.3"
	license "MIT"

	on_arm do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v4.1.3/versatiles-macos-aarch64.tar.gz"
		sha256 "6effda984ee2829de39f41f09ab9adcec964442963d102d6dd00851b065abe19"
	end

	on_intel do
		url "https://github.com/versatiles-org/versatiles-rs/releases/download/v4.1.3/versatiles-macos-x86_64.tar.gz"
		sha256 "69ab7887b1d2ccde056fe796c1da133a897575c79c310a2a3f0d80a1f8b8a425"
	end

	def install
		bin.install "versatiles"
	end
end
