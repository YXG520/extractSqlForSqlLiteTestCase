

    PRAGMA journal_mode = persist;
    CREATE TABLE t1(a, b);
    INSERT INTO t1 VALUES(1, 2);
  


 SELECT * FROM t1 


    INSERT INTO t1 VALUES(3, 4);
  

    BEGIN;
    SELECT * FROM t1;
  
 PRAGMA lock_status 


 SELECT * FROM t1 

 COMMIT 
 SELECT * FROM t1 
