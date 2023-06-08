CREATE TABLE t1(x INTEGER, y INTEGER);
  WITH data(i) AS (
    SELECT 1 UNION ALL SELECT i+1 FROM data
  )
  INSERT INTO t1 SELECT isqrt(i), isqrt(i) FROM data LIMIT 400;
  CREATE INDEX t1x ON t1(x);
  CREATE INDEX t1y ON t1(y);
  ANALYZE;

SELECT * FROM t1 WHERE x = substr('145', 2, 1) AND y = func(1, 2, 3)

UPDATE t1 SET y=y+1 WHERE x = substr('145', 2, 1) AND y = func(1, 2, 3)

DELETE FROM t1 
SELECT * FROM t1 WHERE x = error('error one') AND y = 4;

SELECT * FROM t1 WHERE x = zeroblob(2200000000) AND y = 4;

SELECT * FROM t1 WHERE x = dstr() AND y = 11;

SELECT * FROM t1 WHERE x = test_zeroblob(1100000) AND y = 4;

DROP TABLE IF EXISTS t1;
  CREATE TABLE t1(a INTEGER PRIMARY KEY, b TEXT, c INT);
  WITH RECURSIVE c(x) AS (VALUES(1) UNION ALL SELECT x+1 FROM c WHERE x<10000)
    INSERT INTO t1(a, c) SELECT x, x FROM c;
  UPDATE t1 SET b=printf('x%02x',a/500) WHERE a>4000;
  UPDATE t1 SET b='xyz' where a>=9998;
  CREATE INDEX t1b ON t1(b);
  ANALYZE;
  SELECT count(*), b FROM t1 GROUP BY 2 ORDER BY 2;

explain query plan
  SELECT * FROM t1 WHERE b='xyz' AND b IS NOT NULL ORDER BY +a;
  /*                  v---- Should be "=", not ">"  */

SELECT * FROM t1 WHERE b='xyz' AND b IS NOT NULL ORDER BY +a;

