# rpi-haskell

Haskell installation on top of `rpi-raspbian` base image.

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

Notes:
* Maybe need to run a registration image first:
```
$ docker run --rm --privileged multiarch/qemu-user-static:register
```

* May want to make an rpi-haskell machine w/ better compute than default
  * TODO: test/research to see if this really works
```
$ docker-machine create \
  -d virtualbbox \
  --virtualbox-cpu-count "4"
  --virtualbox-disk-size "409600" # 400gb
  --virtualbox-memory "8192" # 8gb
```

* May need to set `system-ghc: true` in stack.yaml
