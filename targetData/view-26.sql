

  CREATE TABLE t16(a, b, c UNIQUE);
  INSERT INTO t16 VALUES(1, 1, 1);
  INSERT INTO t16 VALUES(2, 2, 2);
  INSERT INTO t16 VALUES(3, 3, 3);
  CREATE VIEW v16 AS SELECT max(a) AS mx, min(b) AS mn FROM t16 GROUP BY c;

  SELECT * FROM v16 AS one, v16 AS two WHERE one.mx=1;



  WITH v17(x,y) AS (SELECT max(a), min(b) FROM t16 GROUP BY c)
  SELECT * FROM v17 AS one, v17 AS two WHERE one.x=1;

