#!/usr/bin/env bash
set -e

sudo apt-get update

# Dependency list
# From: https://ghc.haskell.org/trac/ghc/wiki/Building/Preparation/Linux
sudo apt-get install -y \
  git \
  autoconf \
  automake \
  libtool \
  make \
  libgmp-dev \
  ncurses-dev \
  g++ \
  python \
  bzip2 \
  curl \
  ca-certificates

# ghc requires llvm 3.5, which is not available with apt-get
curl -O http://llvm.org/releases/3.5.2/clang+llvm-3.5.2-armv7a-linux-gnueabihf.tar.xz
tar xJf clang+llvm-3.5.2-armv7a-linux-gnueabihf.tar.xz
rm clang+llvm-3.5.2-armv7a-linux-gnueabihf.tar.xz

cp /opt/work/clang+llvm-3.5.2-armv7a-linux-gnueabihf/bin/* /usr/local/bin/
rm -rf clang+llvm-3.5.2-armv7a-linux-gnueabihf
