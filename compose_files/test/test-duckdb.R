
# simple test script

print('Simple Test of DUCKDB Connectivity')

con <- try(DBI::dbConnect(duckdb::duckdb(), ":memory:"), silent = T)

if(class(con) == "try-error"){
  print('Incorrect Setup.')
}else{
  print(con)
  print('Connection Correctly Configured.')
}

