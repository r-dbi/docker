# rdb

Repository of Docker Images for testing database packages, including dm.

## Overview

Testing an R package that connects to a database can be a challenge. The package must be tested against different databases, different versions of the same database, and different operating systems. This can be a time-consuming process, especially if you don't have access to a database server.

This repository offers a solution based on Docker Compose.
Docker images are defined for each component and for each database.
A hierarchy of Docker Compose files helps combine the components and databases to run tests without altering the development environment.

### Databases Covered:

-   `Microsoft SQL Server`: developed by Microsoft.
-   `MySQL`: developed by Oracle, open-source.
-   `MariaDB`: developed by MariaDB Corporation Ab, open-source.
-   `Oracle`: developed by Oracle.
-   `PostgreSQL`: developed by PostgreSQL Global Development Group, open-source.
-   `SQLite`: developed by D. Richard Hipp, open-source, file-based, and designed to be embedded into applications.
-   `DuckDB`: developed by the CWI Database Architectures group, open-source.
-   `ADBC` is a developing open-source standard designed to facilitate database interactions using the Apache Arrow framework.

## Usage

### Microsoft SQL & R

Launch Containers

``` sh
docker-compose run rdb_mssql
```

Stop Containers

``` sh
docker-compose down mssql #--volumes
```

### MYSQL & R

Launch Containers

``` sh
docker-compose run rdb_mysql
```

Stop Containers

``` sh
docker-compose down mysql #--volumes
```

### MariaDB & R

Launch Containers

``` sh
docker-compose run rdb_maria
```

Stop Containers

``` sh
docker-compose down maria #--volumes
```

### PostgreSQL & R

Launch Containers

``` sh
docker-compose run rdb_postgres
```

Stop Containers

``` sh
docker-compose down postgres #--volumes
```

### Oracle Database & R

Start Containers

``` sh
docker-compose run rdb_oracle
```

Stop Containers

``` sh
docker-compose down oracle #--volumes
```

### SQLite Database & R

Start Containers

``` sh
docker-compose run rdb_sqlite
```

No containers to stop.

### DuckDB Database & R

Start Containers

``` sh
docker-compose run rdb_duckdb
```

### ADBC Database & R

Start Containers

``` sh
docker-compose run rdb_adbi
```

No containers to stop.

## Development

The main `docker-compose.yml` merely includes files in `docker-compose/` . For new services, create a new file.

### Pull all images

``` sh
docker-compose pull
```

### Pull individual images

Example: pull images necessary to run tests against Oracle.

``` sh
docker-compose pull oracle rdb_oracle
```
