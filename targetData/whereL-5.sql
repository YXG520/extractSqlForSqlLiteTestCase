

  PRAGMA automatic_index=OFF;
  CREATE TABLE t0(c0);
  INSERT INTO t0 VALUES('0');
  CREATE VIEW v0(c0) AS SELECT CAST(0 AS INT) FROM t0;
  SELECT 200, * FROM t0, v0 WHERE 0 = t0.c0 AND t0.c0 = v0.c0;



  SELECT 200, * FROM t0, v0 WHERE t0.c0 = 0 AND t0.c0 = v0.c0;



  SELECT 200, * FROM t0, v0 WHERE 0 = t0.c0 AND v0.c0 = t0.c0;



  SELECT 200, * FROM t0, v0 WHERE t0.c0 = 0 AND v0.c0 = t0.c0;
