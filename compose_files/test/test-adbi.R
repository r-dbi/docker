
# simple test script

print('Simple Test of ADBI Connectivity')

con <- try(DBI::dbConnect(adbi::adbi("adbcsqlite"), uri = ":memory:"),
           silent = FALSE)

if(class(con) == "try-error"){
  print('Incorrect Setup.')
}else{
  print(con)
  print('Connection Correctly Configured.')
}

