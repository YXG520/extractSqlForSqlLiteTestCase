

    PRAGMA journal_mode=OFF;
    PRAGMA locking_mode=EXCLUSIVE;
    CREATE TABLE t1(x);
    INSERT INTO t1 VALUES(1);
    SELECT * FROM t1;
  


    BEGIN;
    INSERT INTO t1 VALUES(2);
    ROLLBACK;
    SELECT * FROM t1;
  
