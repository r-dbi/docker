FROM ghcr.io/cynkra/rig-ubuntu:main

RUN mkdir -p /root/workspace

# Install system dependencies for MySQL connection
RUN apt-get update
RUN apt-get install -y libmariadb-dev
RUN apt-get install -y libmysqlclient-dev

RUN R -e "install.packages('DBI')"
RUN R -e "install.packages('RMariaDB')"


