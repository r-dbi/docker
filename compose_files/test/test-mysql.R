
# simple test script

print('Simple Test of MySQL Connectivity')

con <- try(DBI::dbConnect(
  RMariaDB::MariaDB(),
  host = "mysql",
  username = "compose",
  password = "YourStrong!Passw0rd",
  dbname = "test"), silent = T)

if(class(con) == "try-error"){
  print('Incorrect Setup.')
}else{
  print(con)
  print('Connection Correctly Configured.')
}

