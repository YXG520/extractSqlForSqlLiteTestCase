

    PRAGMA cache_size=10;
    CREATE TABLE t1(x);
    INSERT INTO t1 VALUES(randomblob(20000));
    BEGIN;
    DELETE FROM t1;
    INSERT INTO t1 VALUES(randomblob(15000));
  



    ROLLBACK;
    SELECT length(x) FROM t1
  
