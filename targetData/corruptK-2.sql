

  PRAGMA page_size=1024;
  PRAGMA auto_vacuum=0;
  CREATE TABLE t1(x);

  INSERT INTO t1 VALUES(randomblob(20));
  INSERT INTO t1 VALUES(randomblob(20));    -- free this one
  INSERT INTO t1 VALUES(randomblob(20));
  INSERT INTO t1 VALUES(randomblob(20));    -- and this one
  INSERT INTO t1 VALUES(randomblob(20));    -- corrupt this one.

  DELETE FROM t1 WHERE rowid IN(2, 4);
  PRAGMA page_count




  INSERT INTO t1 VALUES(randomblob(900));

