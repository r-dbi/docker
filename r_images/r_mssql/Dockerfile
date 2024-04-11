FROM ghcr.io/cynkra/rig-ubuntu-dbi:main

RUN mkdir -p /root/workspace

# https://learn.microsoft.com/en-us/sql/connect/odbc/linux-mac/installing-the-microsoft-odbc-driver-for-sql-server?view=sql-server-ver16&tabs=ubuntu18-install%2Calpine17-install%2Cdebian8-install%2Credhat7-13-install%2Crhel7-offline
RUN curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add -

RUN curl https://packages.microsoft.com/config/ubuntu/$(lsb_release -rs)/prod.list > /etc/apt/sources.list.d/mssql-release.list

RUN apt-get update

RUN ACCEPT_EULA=Y apt-get install -y msodbcsql18

RUN R -q -e 'keyring::keyring_create("system", ""); keyring::key_set_with_value("mssql", "dm-test-user", "SA"); keyring::key_set_with_value("mssql", "dm-test-password", "YourStrong!Passw0rd")'

COPY odbc.ini /etc/odbc.ini
