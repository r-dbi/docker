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
-   `DuckDB`: developed by the CWI Database Architectures group, open-source.

### R Images for testing purposes

-   `r-mssql` with the necessary packages and libraries to test connections to a Microsoft SQL Server database, MySQL and MariaDB.

    ```sh
    docker pull ghcr.io/krlmlr/rdb/r-mssql:latest
    ```

-   `r-postgres` with the necessary packages and libraries to test connections to a PostgreSQL database.

    ```sh
    docker pull ghcr.io/krlmlr/rdb/r-postgres:latest
    ```

-   `r-oracle` with the necessary packages and libraries to test connections to an Oracle database.

    ```sh
    docker pull ghcr.io/krlmlr/rdb/r-oracle:latest
    ```

-   `r-sqlite` with the necessary packages and libraries to test connections to an SQLite database.

    ```sh
    docker pull ghcr.io/krlmlr/rdb/r-sqlite:latest
    ```

-   `r-duckdb` with the necessary packages and libraries to test connections to an DuckDB database.

    ```sh
    docker pull ghcr.io/krlmlr/rdb/r-duckdb:latest
    ```

R images are based on [rig-ubuntu](https://github.com/cynkra/rig-ubuntu/pkgs/container/rig-ubuntu), built daily at midnight UTC.

## Usage

### Microsoft SQL & R

Launch Containers

```sh
docker-compose run rdb_mssql
```

Stop Containers

```sh
docker-compose down mssql #--volumes
```

### MYSQL & R

Launch Containers

```sh
docker-compose run rdb_mysql
```

Stop Containers

```sh
docker-compose down mysql #--volumes
```

### MariaDB & R

Launch Containers

```sh
docker-compose run rdb_maria
```

Stop Containers

```sh
docker-compose down maria #--volumes
```

### PostgreSQL & R

Launch Containers

```sh
docker-compose run rdb_postgres
```

Stop Containers

```sh
docker-compose down postgres #--volumes
```

### Oracle Database & R

Start Containers

```sh
docker-compose run rdb_oracle
```

Stop Containers

```sh
docker-compose down oracle #--volumes
```

### SQLite Database & R

Start Containers

```sh
docker-compose run rdb_sqlite
```

No containers to stop.

### DuckDB Database & R

Start Containers

```sh
docker-compose run rdb_duckdb
```

No containers to stop.

## Development

The main `docker-compose.yml` merely includes files in `docker-compose/` .
For new services, create a new file.

### Pull all images

```sh
docker-compose pull
```
