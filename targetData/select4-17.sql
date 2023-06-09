

  DROP TABLE IF EXISTS t1;
  CREATE TABLE t1(a int, b int);
  INSERT INTO t1 VALUES(1,2),(1,18),(2,19);
  SELECT x, y FROM (
    SELECT 98 AS x, 99 AS y
    UNION
    SELECT a AS x, sum(b) AS y FROM t1 GROUP BY a
  ) AS w WHERE y>=20
  ORDER BY +x;



  SELECT x, y FROM (
    SELECT a AS x, sum(b) AS y FROM t1 GROUP BY a
    UNION
    SELECT 98 AS x, 99 AS y
  ) AS w WHERE y>=20
  ORDER BY +x;



  SELECT x, y FROM (
    SELECT a AS x, sum(b) AS y FROM t1 GROUP BY a LIMIT 3
    UNION
    SELECT 98 AS x, 99 AS y
  ) AS w WHERE y>=20
  ORDER BY +x;

