#!/usr/bin/env bash
set -e

sudo apt-get update

# Dependency list
# From: https://ghc.haskell.org/trac/ghc/wiki/Building/Preparation/Linux
sudo apt-get install -y \
  haskell-platform \
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
  curl
