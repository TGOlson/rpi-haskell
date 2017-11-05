# rpi-haskell

Haskell installation on top of `rpi-raspbian` base image. Suitable for running or compiling Haskell code for arm devices - such as a Raspberry Pi.

#### Build Details
- [Source Repository](https://github.com/tgolson/rpi-haskell)
- [DockerHub](https://hub.docker.com/r/tgolson/rpi-haskell/)

#### Versions

Latest version is built using GHC 8.0.1 and Stack resolver lts-7.24. Packages are installed globally in `/root/.stack`.

See [image tags](https://hub.docker.com/r/tgolson/rpi-haskell/tags/) for all available versions. Version tag refers to GHC version.

#### Dependencies

Comes with minimal Haskell packages:

```
$ stack exec ghc-pkg list
/var/lib/ghc/package.conf.d
    Cabal-1.24.0.0
    array-0.5.1.1
    base-4.9.0.0
    binary-0.8.3.0
    bytestring-0.10.8.1
    containers-0.5.7.1
    deepseq-1.4.2.0
    directory-1.2.6.2
    filepath-1.4.1.0
    ghc-8.0.1
    ghc-boot-8.0.1
    ghc-boot-th-8.0.1
    ghc-prim-0.5.0.0
    ghci-8.0.1
    haskeline-0.7.2.3
    hoopl-3.10.2.1
    hpc-0.6.0.3
    integer-gmp-1.0.0.1
    pretty-1.1.3.3
    process-1.4.2.0
    rts-1.0
    template-haskell-2.11.0.0
    terminfo-0.4.0.2
    time-1.6.0.1
    transformers-0.5.2.0
    unix-2.7.2.0
    xhtml-3000.2.1
/root/.stack/snapshots/arm-linux/lts-7.24/8.0.1/pkgdb
    (no packages)
/root/.stack/global-project/.stack-work/install/arm-linux/lts-7.24/8.0.1/pkgdb
    (no packages)
```

#### Notes

* To run this on an architecture other than ARM, you will need to run a registration image first:
```
$ docker run --rm --privileged multiarch/qemu-user-static:register --reset
```

