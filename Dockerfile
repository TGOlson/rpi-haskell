FROM resin/rpi-raspbian:jessie

COPY scripts scripts

RUN ./scripts/install-deps
