FROM resin/rpi-raspbian

WORKDIR /opt/work

COPY scripts scripts

RUN scripts/install-deps.sh
RUN scripts/install-cabal.sh
RUN scripts/install-ghc.sh
ENV PATH=/usr/lib/haskell-arm/bin:$PATH

RUN scripts/install-stack.sh

# can probably delete /root/.ghc and /root/.cabal now...

# COPY stack stack
# WORKDIR /opt/work/stack
# RUN cabal install

# NOTE: need to update cabal-install somewhere here... how do?
