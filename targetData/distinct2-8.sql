

  CREATE TABLE t8(a, b, c);
  WITH s(i) AS (
    SELECT 1 UNION ALL SELECT i+1 FROM s WHERE (i+1)<100
  )
  INSERT INTO t8 SELECT i/40, i/20, i/40 FROM s;



  SELECT DISTINCT a, b, c FROM t8;



  SELECT DISTINCT a, b, c FROM t8 WHERE b=3;



  CREATE INDEX i8 ON t8(a, c);
  ANALYZE;
  SELECT DISTINCT a, b, c FROM t8 WHERE b=3;
