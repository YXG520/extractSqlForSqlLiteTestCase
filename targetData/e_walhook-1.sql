

    CREATE TABLE t1(x);
    INSERT INTO t1 VALUES(1);
  

 PRAGMA journal_mode = wal 

 INSERT INTO t1 VALUES(2) 

 
    BEGIN;
      INSERT INTO t1 VALUES(3);
      INSERT INTO t1 VALUES(4);
    COMMIT;
  
 SELECT * FROM t1 

    set ::read_ok 1
  
