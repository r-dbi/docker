alter session set "_ORACLE_SCRIPT"=true;
CREATE USER compose IDENTIFIED BY password1;
GRANT ALL PRIVILEGES TO compose;
SELECT 1 FROM DUAL;