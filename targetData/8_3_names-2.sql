

    PRAGMA cache_size=10;
    CREATE TABLE t1(x);
    INSERT INTO t1 VALUES(randomblob(20000));
    BEGIN;
    DELETE FROM t1;
    INSERT INTO t1 VALUES(randomblob(15000));
  



    COMMIT;
    SELECT length(x) FROM t1
  


    PRAGMA integrity_check;
    SELECT length(x) FROM t1;
  
