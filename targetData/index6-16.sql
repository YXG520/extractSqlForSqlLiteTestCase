

  DROP TABLE t0;
  CREATE TABLE t0(c0 COLLATE NOCASE, c1);
  CREATE INDEX i0 ON t0(0) WHERE c0 >= c1;
  INSERT INTO t0 VALUES('a', 'B');
  SELECT c1 <= c0, c0 >= c1 FROM t0;



  SELECT 2 FROM t0 WHERE c0 >= c1;



  SELECT 3 FROM t0 WHERE c1 <= c0;
