CREATE TABLE t1(y);
  PRAGMA journal_mode = wal;
  INSERT INTO t1 VALUES(1);
  INSERT INTO t1 VALUES(2);
  INSERT INTO t1 VALUES(3);
  INSERT INTO t1 VALUES(4);

SELECT * FROM sqlite_master
SELECT * FROM sqlite_master
PRAGMA wal_checkpoint 
PRAGMA wal_checkpoint = truncate 
PRAGMA wal_checkpoint = truncate 
