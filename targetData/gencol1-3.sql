

  PRAGMA foreign_keys = true;
  CREATE TABLE t0(c0 PRIMARY KEY, c1, c2 AS (c0+c1-c3) REFERENCES t0, c3);
  INSERT INTO t0 VALUES (0, 0, 0), (11, 5, 5);
  UPDATE t0 SET c1 = c0, c3 = c0;
  SELECT *, '|' FROM t0 ORDER BY +c0;



  UPDATE t0 SET c1 = c0, c3 = c0+1;

