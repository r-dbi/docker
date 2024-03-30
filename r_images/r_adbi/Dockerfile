FROM ghcr.io/cynkra/rig-ubuntu-dbi:main

RUN mkdir -p /root/workspace

RUN R -q -e 'pak::pak(c("adbcsqlite", "apache/arrow-adbc/r/adbcpostgresql"), dependencies = TRUE)'
