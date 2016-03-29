FROM resin/rpi-raspbian

RUN echo "deb http://archive.raspbian.org/raspbian stretch main" > /etc/apt/sources.list.d/scretch.list

RUN apt-get update
RUN apt-get install ghc
RUN apt-get install cabal-install
RUN apt-get install haskell-stack

# stack setup requires we have tcp protocol support
RUN apt-get install netbase

RUN apt-get clean
