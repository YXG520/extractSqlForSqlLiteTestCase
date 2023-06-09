
 INSERT INTO t1 VALUES(1, 2) 
 PRAGMA journal_mode = persist 


 SELECT * FROM t1 

 SELECT * FROM t1 


 PRAGMA main.journal_mode 

 PRAGMA main.journal_mode = wal 

 SELECT * FROM t1 

 PRAGMA journal_mode = delete 

 PRAGMA main.journal_mode 

 PRAGMA journal_mode = delete 

 PRAGMA main.journal_mode 



    BEGIN;
      SELECT * FROM t1;
  

 PRAGMA main.journal_mode 
delete

 PRAGMA main.journal_mode 
delete

 PRAGMA main.journal_mode = wal 

 PRAGMA main.journal_mode 

