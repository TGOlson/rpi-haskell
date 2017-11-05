# rpi-haskell

Haskell installation on top of `rpi-raspbian` base image. Suitable for running or compiling Haskell code for arm devices - such as a Raspberry Pi.

#### Build Details
- [Source Repository](https://github.com/tgolson/rpi-haskell)
- [DockerHub](https://hub.docker.com/r/tgolson/rpi-haskell/)

#### Versions

See [tags](https://hub.docker.com/r/tgolson/rpi-haskell/tags/) for available versions. Version tag refers to GHC version.

#### Notes

* To run this on an architecture other than ARM, you will need to run a registration image first:
```
$ docker run --rm --privileged multiarch/qemu-user-static:register --reset
```

