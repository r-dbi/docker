# rdb

Repository of Docker Images necessary to test dm and DBI packages.

## Overview

------------------------------------------------------------------------

Testing an R package that connects to a database can be a challenge. The package must be tested against different databases, different versions of the same database, and different operating systems. This can be a time-consuming process, especially if you don't have access to a database server.

The purpose of this repository is to provide a set of Docker images that can will used to test the `dm` and `DBI` packages. 

Each docker image is based on the latest R version and contains the necessary packages to test database connections.

Docker compose files will be used to create a container for each database and run the tests from freshly built R images.

By launching an R container linked to the respective database container, we can run the tests against the database.

### Databases Covered:

------------------------------------------------------------------------

- `Microsoft SQL Server`: developed by Microsoft.
- `MySQL`: developed by Oracle, open-source.
- `MariaDB`: developed by MariaDB Corporation Ab, open-source.
- `Oracle`: developed by Oracle.
- `PostgreSQL`: developed by PostgreSQL Global Development Group, open-source.


### R Images for testing purposes

-   `r_mssql` with the necessary packages and libraries to test connections to a Microsoft SQL Server database, MySQL and MariaDB.

-   `r_oracle` with the necessary packages and libraries to test connections to an Oracle database.

-   `r_postgres` with the necessary packages and libraries to test connections to a PostgreSQL database.

R images are based on [rig-ubuntu](https://github.com/cynkra/rig-ubuntu/pkgs/container/rig-ubuntu), built daily at midnight UTC.

### Features

------------------------------------------------------------------------

in progress...


### Usage

in progress...


