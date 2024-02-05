
# simple test script

print('Simple Test of Postgres Connectivity')

con <- try(DBI::dbConnect(
  RPostgres::Postgres(),
  host = 'postgres',
  user = 'compose',
  password = 'YourStrong!Passw0rd'), silent = F)

if(class(con) == "try-error"){
  print('Incorrect Setup.')
}else{
  print(con)
  print('Connection Correctly Configured.')
}

