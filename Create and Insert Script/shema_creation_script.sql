--------------------------
------ COVID SCHEMA ------
--------------------------

alter session set "_ORACLE_SCRIPT"=true;  
CREATE USER COVID IDENTIFIED BY *******;
GRANT CREATE SESSION TO COVID;
GRANT CONNECT, RESOURCE, DBA TO COVID;