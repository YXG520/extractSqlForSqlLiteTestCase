
 PRAGMA main.journal_mode 

 PRAGMA main.journal_mode = wal 


    BEGIN;
      CREATE TABLE t1(a, b);
      INSERT INTO t1 VALUES(1, 2);
    COMMIT;
    SELECT * FROM t1;
    PRAGMA main.journal_mode;
  

 PRAGMA main.journal_mode = wal 

 
    INSERT INTO t1 VALUES(3, 4);
    SELECT * FROM t1;
    PRAGMA main.journal_mode;
  


 PRAGMA main.journal_mode 

 PRAGMA main.journal_mode = wal 


    BEGIN;
      CREATE TABLE t1(a, b);
      INSERT INTO t1 VALUES(1, 2);
    COMMIT;
    SELECT * FROM t1;
    PRAGMA main.journal_mode;
  

 PRAGMA main.journal_mode = wal 

 
    INSERT INTO t1 VALUES(3, 4);
    SELECT * FROM t1;
    PRAGMA main.journal_mode;
  

 PRAGMA temp.journal_mode 

 PRAGMA temp.journal_mode = wal 


    BEGIN;
      CREATE TEMP TABLE t1(a, b);
      INSERT INTO t1 VALUES(1, 2);
    COMMIT;
    SELECT * FROM t1;
    PRAGMA temp.journal_mode;
  

 PRAGMA temp.journal_mode = wal 

 
    INSERT INTO t1 VALUES(3, 4);
    SELECT * FROM t1;
    PRAGMA temp.journal_mode;
  
