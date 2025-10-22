#!/usr/bin/env bash

cd "$(dirname "$0")/../Formula"

version=$(curl -s 'https://api.github.com/repos/versatiles-org/versatiles-rs/tags' | jq -r 'first(.[] | .name | select(startswith("v")))')
url_arm="https://github.com/versatiles-org/versatiles-rs/releases/download/${version}/versatiles-macos-aarch64.tar.gz"
url_int="https://github.com/versatiles-org/versatiles-rs/releases/download/${version}/versatiles-macos-x86_64.tar.gz"

# Calculate sha256 of a file at a URL using shasum
sha_arm=$(curl -Lfs "$url_arm" | shasum -a 256 | awk '{print $1}')
sha_int=$(curl -Lfs "$url_int" | shasum -a 256 | awk '{print $1}')

if [[ ${#sha_arm} -ne 64 || ${#sha_int} -ne 64 ]]; then
	echo "SHA has wrong size:"
	echo "   SHA Arm: $sha_arm"
	echo "   SHA Int: $sha_int"
	exit 1
fi

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
