

  DROP INDEX t1x3;
  CREATE TABLE t2 AS SELECT * FROM t1;
  CREATE INDEX t1x4 ON t1(c00, c62, a, b);
  CREATE INDEX t2x4 ON t2(c01, c62, c63, b, c);
  SELECT t1.b, t2.b FROM t1 JOIN t2 ON t2.c01=t1.c00+1 WHERE +t1.b<7000
   ORDER BY +t1.b;

