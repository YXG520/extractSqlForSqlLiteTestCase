

  CREATE TABLE t1(a, b, c);
  CREATE INDEX i1 ON t1(a, b);
  INSERT INTO t1 VALUES(1, 2, 3);
  INSERT INTO t1 VALUES(4, 5, 6);
  INSERT INTO t1 VALUES(7, 8, 9);


  1  "SELECT 1 WHERE (4, 5) IN (SELECT a, b FROM t1)"  1
  2  "SELECT 1 WHERE (5, 5) IN (SELECT a, b FROM t1)"  {
