

  PRAGMA page_size = 1024;
  CREATE TABLE t1(x INTEGER PRIMARY KEY, y);
  INSERT INTO t1 VALUES(2, randomblob(1200));



  PRAGMA page_size = 512;
  VACUUM;



  PRAGMA integrity_check

