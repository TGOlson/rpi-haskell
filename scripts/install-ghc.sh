#!/usr/bin/env bash
set -e

curl -o ghc-7.10.2.tar.xz http://downloads.haskell.org/~ghc/7.10.2/ghc-7.10.2-arm-unknown-linux.tar.xz
tar xJf ghc-7.10.2.tar.xz
rm ghc-7.10.2.tar.xz

pushd ghc-7.10.2
./configure --prefix=/usr/lib/haskell-arm
sudo make install

popd
rm -rf ghc-7.10.2
