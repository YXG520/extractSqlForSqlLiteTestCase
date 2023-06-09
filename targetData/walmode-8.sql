

  CREATE TABLE t1(a, b);
  PRAGMA journal_mode = WAL;
  ATTACH 'test.db2' AS two;
  CREATE TABLE two.t2(a, b);


 PRAGMA main.journal_mode 
wal

 PRAGMA two.journal_mode  
delete

 PRAGMA two.journal_mode = DELETE 
delete

 ATTACH 'test.db2' AS two 


 PRAGMA main.journal_mode 
wal

 PRAGMA two.journal_mode  
delete

 INSERT INTO two.t2 DEFAULT VALUES 


 PRAGMA two.journal_mode  
delete

 INSERT INTO t1 DEFAULT VALUES 


 PRAGMA main.journal_mode  
wal

 PRAGMA journal_mode  
wal


     PRAGMA two.journal_mode=WAL;
     PRAGMA two.journal_mode;
  

 PRAGMA journal_mode = WAL 
wal

 ATTACH 'test.db2' AS two  


 PRAGMA main.journal_mode  
wal

 PRAGMA two.journal_mode   
wal

 INSERT INTO two.t2 DEFAULT VALUES 


 PRAGMA two.journal_mode   
wal

 PRAGMA main.journal_mode 
wal

 PRAGMA journal_mode = DELETE 
delete

 PRAGMA main.journal_mode 
delete

 PRAGMA two.journal_mode 
delete

 PRAGMA journal_mode = WAL 
wal

 PRAGMA main.journal_mode 
wal

 PRAGMA two.journal_mode 
wal
