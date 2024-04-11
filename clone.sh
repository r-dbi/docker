#!/bin/sh

set -e

mkdir -p r-dbi
cd r-dbi

gh repo clone r-dbi/DBI
gh repo clone r-dbi/DBItest
gh repo clone r-dbi/RMariaDB
gh repo clone r-dbi/RSQLite
gh repo clone r-dbi/RPostgres
gh repo clone r-dbi/odbc
gh repo clone r-dbi/adbi
gh repo clone cynkra/dm
