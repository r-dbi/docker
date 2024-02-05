
# simple test script

print('Simple Test of Oracle Connectivity')

con <- try(DBI::dbConnect(odbc::odbc(),
                          UID='compose',
                          PWD='password1',
                          Driver = 'OracleODBC-19c'), silent = FALSE)

if(class(con) == "try-error"){
  print('Incorrect Setup.')
}else{
  print(con)
  print('Connection Correctly Configured.')
}

