FROM ghcr.io/cynkra/rig-ubuntu:main

RUN mkdir -p /root/workspace

RUN apt-get update
RUN apt-get install -y libpq-dev

RUN R -e "install.packages('RPostgres')"
