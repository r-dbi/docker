
# simple test script

print('Simple Test of SQLITE Connectivity')

con <- try(con <- DBI::dbConnect(RSQLite::SQLite(), ":memory:"), silent = T)

if(class(con) == "try-error"){
  print('Incorrect Setup.')
}else{
  print(con)
  print('Connection Correctly Configured.')
}

