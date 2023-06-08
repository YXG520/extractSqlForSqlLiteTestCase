CREATE TABLE t1(a,b,c,d,PRIMARY KEY(a,b,c));
  WITH RECURSIVE
    c(x) AS (VALUES(1) UNION ALL SELECT x+1 FROM c WHERE x<1000)
  INSERT INTO t1(a,b,c,d)
    SELECT 1, 1, x, printf('x%04d',x) FROM c;
  ANALYZE;

EXPLAIN QUERY PLAN SELECT d FROM t1 WHERE +a=1 AND c=32;

SELECT d FROM t1 WHERE +a=1 AND c=32;

EXPLAIN QUERY PLAN SELECT d FROM t1 WHERE a=1 AND c=32;

SELECT d FROM t1 WHERE a=1 AND c=32;

CREATE TABLE t2(a,b,c,d,PRIMARY KEY(a,b,c)) WITHOUT ROWID;
  WITH RECURSIVE
    c(x) AS (VALUES(1) UNION ALL SELECT x+1 FROM c WHERE x<1000)
  INSERT INTO t2(a,b,c,d)
    SELECT 1, 1, x, printf('x%04d',x) FROM c;
  ANALYZE;

EXPLAIN QUERY PLAN SELECT d FROM t2 WHERE +a=1 AND c=32;

SELECT d FROM t2 WHERE +a=1 AND c=32;

EXPLAIN QUERY PLAN SELECT d FROM t2 WHERE a=1 AND c=32;

SELECT d FROM t2 WHERE a=1 AND c=32;

