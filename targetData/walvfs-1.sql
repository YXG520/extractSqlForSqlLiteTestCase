

  PRAGMA auto_vacuum = 0;
  PRAGMA journal_mode = wal;
  PRAGMA synchronous = normal;
  CREATE TABLE t1(a, b, c);
  INSERT INTO t1 VALUES(1, 2, 3);
  INSERT INTO t1 VALUES(4, 5, 6);
  INSERT INTO t1 VALUES(7, 8, 9);
  PRAGMA wal_checkpoint;


 INSERT INTO t1 VALUES(10, 11, 12) 


  PRAGMA synchronous = normal;
  INSERT INTO t1 VALUES(13, 14, 15);
  INSERT INTO t1 VALUES(16, 17, 18);
  PRAGMA wal_checkpoint;


 INSERT INTO t1 VALUES(10, 11, 12) 
