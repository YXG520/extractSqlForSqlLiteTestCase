

  PRAGMA page_size=1024;
  PRAGMA auto_vacuum=0;
  CREATE TABLE t1(x);

  INSERT INTO t1 VALUES(randomblob(20));
  INSERT INTO t1 VALUES(randomblob(100));   -- make this into a free slot
  INSERT INTO t1 VALUES(randomblob(27));    -- this one will be corrupt
  INSERT INTO t1 VALUES(randomblob(800));

  DELETE FROM t1 WHERE rowid=2;  -- free the 100 byte slot
  PRAGMA page_count




  INSERT INTO t1 VALUES(randomblob(20));



  INSERT INTO t1 VALUES(randomblob(90));

