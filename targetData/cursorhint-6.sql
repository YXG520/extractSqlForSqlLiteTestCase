

  CREATE TABLE t6(a TEXT UNIQUE, b TEXT);
  INSERT INTO t6(a,b) VALUES('uvw','xyz'),('abc','def');
  WITH v1(a) AS (SELECT a COLLATE NOCASE FROM t6)
  SELECT v1.a, count(*) FROM t6 LEFT JOIN v1 ON true
   GROUP BY 1
  HAVING (SELECT true FROM t6 AS aa LEFT JOIN t6 AS bb ON length(v1.a)>5);

