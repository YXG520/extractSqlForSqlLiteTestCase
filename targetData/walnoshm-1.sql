

  CREATE TABLE t1(x, y);
  INSERT INTO t1 VALUES(1, 2);


 
  PRAGMA journal_mode = WAL;
  SELECT * FROM t1;

