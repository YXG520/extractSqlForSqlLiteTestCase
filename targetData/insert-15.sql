

  DROP TABLE IF EXISTS t1;
  DROP TABLE IF EXISTS t2;
  CREATE TABLE t1(a INTEGER PRIMARY KEY, b TEXT);
  CREATE INDEX i1 ON t1(b);
  CREATE TABLE t2(a, b);
  INSERT INTO t2 VALUES(4, randomblob(31000));
  INSERT INTO t2 VALUES(4, randomblob(32000));
  INSERT INTO t2 VALUES(4, randomblob(33000));
  REPLACE INTO t1 SELECT a, b FROM t2;
  SELECT a, length(b) FROM t1;

