

  CREATE TABLE t11(a INTEGER PRIMARY KEY, b INT);
  WITH RECURSIVE cnt(x) AS (VALUES(1) UNION ALL SELECT x+1 FROM cnt WHERE x<20)
    INSERT INTO t11(a,b) SELECT x, (x*17)%100 FROM cnt;
  SELECT * FROM t11;



  DELETE FROM t11 AS xyz
   WHERE EXISTS(SELECT 1 FROM t11 WHERE t11.a>xyz.a AND t11.b<=xyz.b);
  SELECT * FROM t11;

