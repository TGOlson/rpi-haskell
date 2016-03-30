# rpi-haskell

Haskell installation on top of `rpi-raspbian` base image. Suitable for running or compiling Haskell code for arm devices - such as the raspberry pi.

#### Versions

```
$ ghc --version
The Glorious Glasgow Haskell Compilation System, version 7.10.3
```

```
$ cabal --version
cabal-install version 1.22.6.0
using version 1.22.5.0 of the Cabal library
```

```
$ stack --version
Version 1.0.0 arm
```

#### Notes

* You may need to run a registration image before using `rpi-haskell`:
```
$ docker run --rm --privileged multiarch/qemu-user-static:register --reset
```
