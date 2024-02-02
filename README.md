# rdb

Repository of Docker Images necessary to test dm and DBI packages.

## Overview

Testing an R package that connects to a database can be a challenge. The package must be tested against different databases, different versions of the same database, and different operating systems. This can be a time-consuming process, especially if you don't have access to a database server.

The purpose of this repository is to provide a set of Docker images that can will used to test the `dm` and `DBI` packages.

Each docker image is based on the latest R version and contains the necessary packages to test database connections.

Docker compose files will be used to create a container for each database and run the tests from freshly built R images.

By launching an R container linked to the respective database container, we can run the tests against the database.

### Databases Covered:

-   `Microsoft SQL Server`: developed by Microsoft.
-   `MySQL`: developed by Oracle, open-source.
-   `MariaDB`: developed by MariaDB Corporation Ab, open-source.
-   `Oracle`: developed by Oracle.
-   `PostgreSQL`: developed by PostgreSQL Global Development Group, open-source.
-   `SQLite`: developed by D. Richard Hipp, open-source, file-based, and designed to be embedded into applications.

### R Images for testing purposes

-   `r-mssql` with the necessary packages and libraries to test connections to a Microsoft SQL Server database, MySQL and MariaDB.

    ```         
    docker pull ghcr.io/krlmlr/rdb/r-mssql:latest
    ```

-   `r-postgres` with the necessary packages and libraries to test connections to a PostgreSQL database.

    ```         
    docker pull ghcr.io/krlmlr/rdb/r-postgres:latest
    ```

-   `r-oracle` with the necessary packages and libraries to test connections to an Oracle database.

    ```         
    docker pull ghcr.io/krlmlr/rdb/r-oracle:latest
    ```

-   `r-sqlite` with the necessary packages and libraries to test connections to an SQLite database.

    ```         
    docker pull ghcr.io/krlmlr/rdb/r-sqlite:latest
    ```

R images are based on [rig-ubuntu](https://github.com/cynkra/rig-ubuntu/pkgs/container/rig-ubuntu), built daily at midnight UTC.

## Usage

### Microsoft SQL & R

Launch Containers

``` r
docker-compose -f compose_files/docker-compose.mssql.yml run rdb_mssql 
```

Stop Containers

``` r
docker-compose -f compose_files/docker-compose.mssql.yml down #--volumes
```

### MYSQL & R

Launch Containers

``` r
docker-compose -f compose_files/docker-compose.mysql.yml run rdb_mysql 
```

Stop Containers

``` r
docker-compose -f compose_files/docker-compose.mysql.yml down #--volumes
```

### MariaDB & R

Launch Containers

``` r
docker-compose -f compose_files/docker-compose.maria.yml run rdb_maria 
```

Stop Containers

``` r
docker-compose -f compose_files/docker-compose.maria.yml down #--volumes
```

### PostgreSQL & R

Launch Containers

``` r
docker-compose -f compose_files/docker-compose.postgres.yml run rdb_postgres 
```

Stop Containers

``` r
docker-compose -f compose_files/docker-compose.postgres.yml down #--volumes
```

### Oracle Database & R

Start Containers

``` r
docker-compose -f compose_files/docker-compose.oracle.yml run rdb_oracle 
```

Stop Containers

``` r
docker-compose -f compose_files/docker-compose.oracle.yml down #--volumes
```

### SQLite Database & R

Start Containers

``` r
docker-compose -f compose_files/docker-compose.sqlite.yml run rdb_sqlite
```

Stop Containers

``` r
docker-compose -f compose_files/docker-compose.sqlite.yml down #--volumes
```

## 
