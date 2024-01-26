FROM ghcr.io/cynkra/rig-ubuntu:main

RUN mkdir -p /root/workspace

RUN R -q -e 'pak::pkg_install("DBI")'
RUN R -q -e 'pak::pkg_install("RPostgres")'

RUN apt-get install -y gnupg lsb-release time
