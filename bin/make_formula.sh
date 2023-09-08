#!/usr/bin/env bash

cd "$(dirname "$0")/../Formula"

version=$(curl -s 'https://api.github.com/repos/versatiles-org/versatiles-rs/tags' | jq -r 'first(.[] | .name | select(startswith("v")))')
url_arm="https://github.com/versatiles-org/versatiles-rs/releases/download/${version}/versatiles-macos-aarch64.tar.gz"
url_int="https://github.com/versatiles-org/versatiles-rs/releases/download/${version}/versatiles-macos-x86_64.tar.gz"
sha_arm=$(curl -L "$url_arm" | sha256sum | head -c 64)
sha_int=$(curl -L "$url_int" | sha256sum | head -c 64)

cat <<_EOT_ > versatiles.rb
class Versatiles < Formula
	desc "A toolbox for converting, checking and serving map tiles in various formats."
	homepage "https://github.com/versatiles-org/versatiles-rs"
	version "${version:1}"
	license "MIT"

	on_arm do
		url "${url_arm}"
		sha256 "${sha_arm}"
	end

	on_intel do
		url "${url_int}"
		sha256 "${sha_int}"
	end

	def install
		bin.install "versatiles"
	end
end
_EOT_