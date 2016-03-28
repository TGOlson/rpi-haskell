Steps...

# Maybe need to run this first..
```
docker run --rm --privileged multiarch/qemu-user-static:register
```

$ ghc version 7.10.2
cabal-install version 1.22.6.0
using version 1.22.4.0 of the Cabal library

# TODO:
```
/scripts
  install-ghc.sh (curl, tar, configure, make install, rm rm)
  install-stack.sh (git, cabal install, rm rm)
```


# run raspberry with a fun little directory mounted...
```
docker run -v `pwd`:/work -it --rm resin/rpi-raspbian
```

# install haskell platform
```
apt-get upgrade
apt-get update
apt-get install haskell-platform
```

Now cabal 1.18 and ghc 7.6 are installed... but that sucks

## NOTE
Tylers-MacBook-Pro:rpi-haskell tyler$ docker run -it rpi-haskell /bin/bash
root@3bce51761fcb:/opt/work# ls
root@3bce51761fcb:/opt/work# ghc --version
The Glorious Glasgow Haskell Compilation System, version 7.6.3
root@3bce51761fcb:/opt/work# cabal --version
cabal-install version 1.20.0.3
using version 1.20.0.2 of the Cabal library


# get newest cabal source

https://www.haskell.org/cabal/release/cabal-1.22.8.0/Cabal-1.22.8.0.tar.gz
And we already have cabal, so `cd Cabal-1.22.8.0 && cabal install`

# Next theoretical steps...
# Get stack source

https://github.com/commercialhaskell/stack.git

`cd stack && cabal install`


stack setup with bindist??
http://downloads.haskell.org/~ghc/7.10.2/ghc-7.10.2-arm-unknown-linux.tar.xz



###### TODO
run rpi-haskell machine
remove cabal dir after compile
compile with optimizations



##############

In-place registering Cabal-1.22.8.0...
Creating package registration file: /tmp/pkgConf-Cabal-1.22.824.0
Installing library in /root/.cabal/lib/arm-linux-ghc-7.6.3/Cabal-1.22.8.0
Registering Cabal-1.22.8.0...
Installed Cabal-1.22.8.0
