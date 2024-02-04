FROM ghcr.io/cynkra/rig-ubuntu:main

RUN mkdir -p /root/workspace

RUN apt-get update

RUN R -e "install.packages('DBI')"
RUN R -e "install.packages('duckdb')"
