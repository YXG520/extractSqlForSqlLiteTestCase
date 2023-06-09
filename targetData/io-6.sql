

    PRAGMA mmap_size = 0;
    PRAGMA page_size = 1024;
    PRAGMA cache_size = 2000;
    CREATE TABLE t1(x);
    CREATE TABLE t2(x);
    CREATE TABLE t3(x);
    CREATE INDEX i3 ON t3(x);
    INSERT INTO t3 VALUES(randomblob(100));
    INSERT INTO t3 SELECT randomblob(100) FROM t3;
    INSERT INTO t3 SELECT randomblob(100) FROM t3;
    INSERT INTO t3 SELECT randomblob(100) FROM t3;
    INSERT INTO t3 SELECT randomblob(100) FROM t3;
    INSERT INTO t3 SELECT randomblob(100) FROM t3;
    INSERT INTO t3 SELECT randomblob(100) FROM t3;
    INSERT INTO t3 SELECT randomblob(100) FROM t3;
    INSERT INTO t3 SELECT randomblob(100) FROM t3;
    INSERT INTO t3 SELECT randomblob(100) FROM t3;
    INSERT INTO t3 SELECT randomblob(100) FROM t3;
    INSERT INTO t3 SELECT randomblob(100) FROM t3;
  

  1 { BEGIN;
        INSERT INTO t1 VALUES('123');
        INSERT INTO t2 VALUES('456');
      COMMIT;
  

 PRAGMA integrity_check 
ok

 PRAGMA integrity_check 
ok

