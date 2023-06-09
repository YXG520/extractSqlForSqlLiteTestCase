

  CREATE TABLE t3(a, b, c, d);
  CREATE INDEX t3_ba ON t3(b, a, c);
  CREATE INDEX t3_a ON t3(a);

  WITH d(a, b) AS (
    SELECT 1, 1 
    UNION ALL
    SELECT a+1, (a+1) % 5 FROM d WHERE a<100
  )
  INSERT INTO t3 SELECT a, b, 'c', 'd' FROM d;

  CREATE TABLE t2(a, b, c, d);
  CREATE INDEX t2_a ON t2(a);
  CREATE INDEX t2_ba ON t2(b, a, c);
  INSERT INTO t2 SELECT * FROM t3;

  ANALYZE;
  SELECT * FROM sqlite_stat1;


S

S
