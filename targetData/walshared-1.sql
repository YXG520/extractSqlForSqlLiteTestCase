

    PRAGMA cache_size = 10;
    PRAGMA journal_mode = WAL;
    CREATE TABLE t1(a PRIMARY KEY, b UNIQUE);
    INSERT INTO t1 VALUES(randomblob(100), randomblob(200));
  


    BEGIN;
      INSERT INTO t1 VALUES(randomblob(100), randomblob(200));
      INSERT INTO t1 SELECT randomblob(100), randomblob(200) FROM t1;
      INSERT INTO t1 SELECT randomblob(100), randomblob(200) FROM t1;
      INSERT INTO t1 SELECT randomblob(100), randomblob(200) FROM t1;
  

 PRAGMA wal_checkpoint 

 PRAGMA wal_checkpoint 

 COMMIT 
 PRAGMA integrity_check 
