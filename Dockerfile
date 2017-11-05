FROM resin/rpi-raspbian:stretch

RUN echo "deb http://archive.raspbian.org/raspbian stretch main" > /etc/apt/sources.list.d/scretch.list

RUN apt-get update

# note: stackage resolver version should correspond to ghc version
ARG ghc_version=8.0.1-17+rpi1
ARG resolver_version=lts-7.24
ARG stack_global_path=/root/.stack/global-project

RUN apt-get install ghc=$ghc_version cabal-install haskell-stack

# stack setup requires we have tcp protocol support
RUN apt-get install netbase ca-certificates git

RUN apt-get clean

RUN mkdir -p $stack_global_path

RUN echo "flags: {} \n\
extra-package-dbs: [] \n\
packages: [] \n\
extra-deps: [] \n\
resolver: $resolver_version" > $stack_global_path/stack.yaml

RUN stack setup
