# rpi-haskell

Haskell installation on top of `rpi-raspbian` base image. Suitable for running or compiling Haskell code for arm devices - such as the raspberry pi.

#### Build Details
- [Source Repository](https://github.com/tgolson/rpi-haskell)
- [DockerHub](https://hub.docker.com/r/tgolson/rpi-haskell/)

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

* To run this on an architecture other than ARM, you will need to run a registration image first:
```
$ docker run --rm --privileged multiarch/qemu-user-static:register --reset
```
