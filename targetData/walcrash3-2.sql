

    PRAGMA page_size = 512;
    PRAGMA journal_mode = WAL;
    PRAGMA wal_autocheckpoint = 128;
    CREATE TABLE t1(a PRIMARY KEY, b);
    INSERT INTO t1 VALUES(randomblob(25), randomblob(200));
  
 INSERT INTO t1 VALUES(randomblob(25), randomblob(200)) 


      SELECT * FROM sqlite_master;
      PRAGMA synchronous = full;
      PRAGMA wal_checkpoint;
      BEGIN;
        INSERT INTO t1 VALUES(randomblob(26), randomblob(200));
        INSERT INTO t1 VALUES(randomblob(26), randomblob(200));
        INSERT INTO t1 VALUES(randomblob(26), randomblob(200));
        INSERT INTO t1 VALUES(randomblob(26), randomblob(200));
        INSERT INTO t1 VALUES(randomblob(26), randomblob(200));
        INSERT INTO t1 VALUES(randomblob(26), randomblob(200));
        INSERT INTO t1 VALUES(randomblob(26), randomblob(200));
        INSERT INTO t1 VALUES(randomblob(26), randomblob(200));
      COMMIT;
    

 PRAGMA integrity_check 
