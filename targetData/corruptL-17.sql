

    CREATE TABLE t1(o INTEGER PRIMARY KEY, t UNIQUE);
    INSERT INTO t1(t) VALUES(randomblob(123));
    INSERT INTO t1(t) SELECT randomblob(123) FROM t1;
    INSERT INTO t1(t) SELECT randomblob(123) FROM t1;
    INSERT INTO t1(t) SELECT randomblob(123) FROM t1;
    INSERT INTO t1(t) SELECT randomblob(123) FROM t1;
    INSERT INTO t1(t) SELECT randomblob(123) FROM t1;
    INSERT INTO t1(t) SELECT randomblob(123) FROM t1;
    INSERT INTO t1(t) SELECT randomblob(123) FROM t1;
    INSERT INTO t1(t) SELECT randomblob(123) FROM t1;
    INSERT INTO t1(t) SELECT randomblob(123) FROM t1;
  
    PRAGMA journal_mode = wal;
    INSERT INTO t1 VALUES(-1, 'b');
  



    PRAGMA wal_checkpoint
  

