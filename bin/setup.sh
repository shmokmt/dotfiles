#!/bin/sh

set -e

mitamae_version="1.14.1"
mitamae_cache="mitamae-${mitamae_version}"

if [ -f "bin/${mitamae_cache}" ]; then exit; fi

case "$(uname)/$(uname -m)" in
  "Linux/x86_64")
    mitamae_bin="mitamae-x86_64-linux"
    ;;
  "Linux/aarch64" )
    mitamae_bin="mitamae-aarch64-linux"
    ;;
 "Darwin/arm64")
    mitamae_bin="mitamae-aarch64-darwin"
    ;;
  *)
    echo "unexpected uname: $(uname)/$(uname -m)"
    exit 1
    ;;
esac

curl -o "bin/${mitamae_cache}" -fL "https://github.com/itamae-kitchen/mitamae/releases/download/v${mitamae_version}/${mitamae_bin}"

chmod +x "bin/${mitamae_cache}"
ln -sf "${mitamae_cache}" bin/mitamae
