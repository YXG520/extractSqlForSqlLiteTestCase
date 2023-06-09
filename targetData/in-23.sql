

  DROP TABLE IF EXISTS t4;
  CREATE TABLE t4(a TEXT, b INT);
  INSERT INTO t4(a,b) VALUES('abc',0),('ABC',1),('def',2);
  CREATE INDEX t4x ON t4(a, +a COLLATE NOCASE);
  SELECT a0.a, group_concat(a1.a) AS b
    FROM t4 AS a0 JOIN t4 AS a1
   GROUP BY a0.a
  HAVING (SELECT sum( (a1.a == +a0.a COLLATE NOCASE) IN (SELECT b FROM t4)));



  SELECT a0.a, group_concat(a1.a) AS b
    FROM t4 AS a0 JOIN t4 AS a1
   GROUP BY a0.a
  HAVING (SELECT sum( (a1.a GLOB +a0.a COLLATE NOCASE) IN (SELECT b FROM t4)));



  CREATE VIEW t5 AS
    SELECT 1 AS b
     WHERE (SELECT count(0=NOT+a COLLATE NOCASE IN (SELECT 0))
              FROM t4
             GROUP BY a);
  SELECT * FROM t5;

