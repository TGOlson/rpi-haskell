#!/usr/bin/env bash
set -e

# We need ghc to install ghc to compile ghc
sudo apt-get install -y ghc

curl -o ghc-7.10.2.tar.xz http://downloads.haskell.org/~ghc/7.10.2/ghc-7.10.2-arm-unknown-linux.tar.xz
tar xJf ghc-7.10.2.tar.xz
rm ghc-7.10.2.tar.xz

pushd ghc-7.10.2
./configure
sudo make install

popd
rm -rf ghc-7.10.2

# We don't need this anymore
sudo apt-get remove ghc
