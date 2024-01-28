FROM ghcr.io/cynkra/rig-ubuntu:main

RUN mkdir -p /root/workspace

RUN R -q -e 'pak::pkg_install("odbc")'
RUN R -q -e 'pak::pkg_install("DBI")'
RUN R -q -e 'pak::pkg_install("dm")'

RUN apt-get update

RUN apt-get install -y gnupg lsb-release time

WORKDIR /opt/oracle/

RUN apt-get update && \
    apt-get install -y libaio1 wget unzip

# Download the Oracle Instant Client and ODBC Drivers
RUN wget https://download.oracle.com/otn_software/linux/instantclient/1921000/instantclient-basic-linux.x64-19.21.0.0.0dbru.zip
RUN wget https://download.oracle.com/otn_software/linux/instantclient/1921000/instantclient-odbc-linux.x64-19.21.0.0.0dbru.zip

RUN unzip instantclient-basic-linux.x64-19.21.0.0.0dbru.zip
RUN unzip instantclient-odbc-linux.x64-19.21.0.0.0dbru.zip
RUN rm instantclient-basic-linux.x64-19.21.0.0.0dbru.zip
RUN rm instantclient-odbc-linux.x64-19.21.0.0.0dbru.zip

RUN sh -c "echo /opt/oracle/instantclient_19_21 > \
      /etc/ld.so.conf.d/oracle-instantclient.conf"
RUN ldconfig

RUN export LD_LIBRARY_PATH=/opt/oracle/instantclient_19_21:$LD_LIBRARY_PATH
RUN export PATH=/opt/oracle/instantclient_19_21:$PATH

# Path to the odbc.ini file
ARG ODBC_FILE="/etc/odbc.ini"

# Create the odbc.ini file if it doesn't exist, and append the required content
RUN mkdir -p $(dirname $ODBC_FILE) && \
    { \
      echo "[oracle]"; \
      echo "Driver      = OracleODBC-19c"; \
      echo "Server      = oracle"; \
      echo "ServerName  = //oracle:1521/FREE"; \
      echo "Port        = 1521"; \
      echo "Database    = FREE"; \
      echo ""; \
    } >> $ODBC_FILE

# Path to the odbc.ini file
ARG ODBCI_FILE="/etc/odbcinst.ini"

# Create the odbc.ini file if it doesn't exist, and append the required content
RUN mkdir -p $(dirname $ODBCI_FILE) && \
    { \
      echo "[OracleODBC-19c]"; \
      echo "Description = Oracle ODBC driver for Oracle 19c"; \
      echo "Driver = /opt/oracle/instantclient_19_21/libsqora.so.19.1"; \
      echo "FileUsage = 1"; \
      echo ""; \
    } >> $ODBCI_FILE

WORKDIR /root/workspace
