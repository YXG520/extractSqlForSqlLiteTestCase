CREATE TABLE t1(a INTEGER PRIMARY KEY, b, c, d DEFAULT true);
  INSERT INTO t1 DEFAULT VALUES;
  SELECT * FROM t1;

SELECT * FROM t1 