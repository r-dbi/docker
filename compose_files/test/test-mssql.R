
# simple test script

print('Simple Test of MSSQL Connectivity')

con <- try(DBI::dbConnect(
  odbc::odbc(),
  driver = 'ODBC Driver 18 for SQL Server',
  server = 'mssql',
  database = 'test',
  uid = 'SA',
  pwd = 'YourStrong!Passw0rd',
  port = 1433,
  TrustServerCertificate = 'yes'), silent = FALSE)

if(class(con) == "try-error"){
  print('Incorrect Setup.')
}else{
  print(con)
  print('Connection Correctly Configured.')
}

