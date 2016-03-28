#!/usr/bin/env bash
set -e

curl -o Cabal-1.22.8.0.tar.gz https://www.haskell.org/cabal/release/cabal-1.22.8.0/Cabal-1.22.8.0.tar.gz -k
tar xzf Cabal-1.22.8.0.tar.gz
rm Cabal-1.22.8.0.tar.gz

pushd Cabal-1.22.8.0
ghc --make Setup.hs
./Setup configure --user --prefix=/usr/lib/haskell-arm
./Setup build
./Setup install
popd

# cabal install
# rm -rf ghc-7.10.2

# From Cabal-1.22.8.0/README.md
# Installing as root or Administrator
# -----------------------------------
#
#     ghc -threaded --make Setup
#     ./Setup configure
#     ./Setup build
#     sudo ./Setup install
#
# Compiling Setup rather than using `runghc Setup` is much faster and
# works on Windows. For all packages other than Cabal itself, it is fine
# to use `runghc`.
#
# This will install into `/usr/local` on Unix, and on Windows it will
# install into `$ProgramFiles/Haskell`. If you want to install elsewhere,
# use the `--prefix=` flag at the configure step.

# ghc -threaded --make Setup
# ./Setup configure --prefix=/usr/lib/haskell-arm
# ./Setup build
# sudo ./Setup install

# https://www.haskell.org/cabal/release/cabal-1.22.8.0/Cabal-1.22.8.0.tar.gz
# https://www.haskell.org/cabal/release/cabal-install-1.22.9.0/cabal-install-1.22.9.0.tar.gz
