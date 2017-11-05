FROM resin/rpi-raspbian:stretch

RUN echo "deb http://archive.raspbian.org/raspbian stretch main" > /etc/apt/sources.list.d/scretch.list

RUN apt-get update
RUN apt-get install ghc cabal-install haskell-stack

# stack setup requires we have tcp protocol support
RUN apt-get install netbase ca-certificates git

RUN apt-get clean
