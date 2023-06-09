

  DROP TABLE IF EXISTS t1;
  CREATE TABLE t1(a INTEGER PRIMARY KEY,b);
  CREATE INDEX t1b ON t1(b);
  WITH RECURSIVE c(x) AS (VALUES(1) UNION ALL SELECT x+1 FROM c WHERE x<100)
  INSERT INTO t1(a,b) SELECT x, 10000000000000004.0 FROM c
   WHERE x NOT IN (23,37);
  INSERT INTO t1(a,b) VALUES(23,10000000000000005);
  INSERT INTO t1(a,b) VALUES(37,10000000000000003);
  DELETE FROM t1 WHERE a NOT IN (23,37);
  PRAGMA integrity_check;

