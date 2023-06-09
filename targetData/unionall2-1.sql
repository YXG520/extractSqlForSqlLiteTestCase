

  CREATE TABLE t1(a, b);
  CREATE TABLE t2(c, d);

  CREATE VIEW v1 AS SELECT * FROM t1, t2;
  CREATE VIEW v2 AS SELECT * FROM t1, t2;

  CREATE VIEW vA AS
    SELECT * FROM v1, (
      SELECT * FROM t1 LEFT JOIN t2 ON (a=c)
    )
    UNION ALL
    SELECT * FROM v1, v2



  SELECT 1 FROM vA, vA, vA, vA, vA, vA, vA, vA, vA, vA

