CREATE TABLE t1(a,b);
  WITH RECURSIVE
    cnt(x) AS (VALUES(1000) UNION ALL SELECT x+1 FROM cnt WHERE x<2000)
  INSERT INTO t1(a,b) SELECT x, x FROM cnt;
  CREATE INDEX t1a ON t1(a);
  ANALYZE;

EXPLAIN QUERY PLAN
  SELECT * FROM t1 WHERE a BETWEEN 500 AND 2500;

EXPLAIN QUERY PLAN
  SELECT * FROM t1 WHERE a BETWEEN 2900 AND 3000;

EXPLAIN QUERY PLAN
  SELECT * FROM t1 WHERE a BETWEEN 1700 AND 1750;

EXPLAIN QUERY PLAN
  SELECT * FROM t1 WHERE a BETWEEN 1 AND 500

EXPLAIN QUERY PLAN
  SELECT * FROM t1 WHERE a BETWEEN 3000 AND 3000000

EXPLAIN QUERY PLAN
  SELECT * FROM t1 WHERE a<500

EXPLAIN QUERY PLAN
  SELECT * FROM t1 WHERE a>2500

EXPLAIN QUERY PLAN
  SELECT * FROM t1 WHERE a>1900

EXPLAIN QUERY PLAN
  SELECT * FROM t1 WHERE a>1100

EXPLAIN QUERY PLAN
  SELECT * FROM t1 WHERE a<1100

EXPLAIN QUERY PLAN
  SELECT * FROM t1 WHERE a<1900

DROP INDEX t1a;
  CREATE INDEX t1a ON t1(a DESC);
  ANALYZE;

EXPLAIN QUERY PLAN
  SELECT * FROM t1 WHERE a BETWEEN 500 AND 2500;

EXPLAIN QUERY PLAN
  SELECT * FROM t1 WHERE a BETWEEN 2900 AND 3000;

EXPLAIN QUERY PLAN
  SELECT * FROM t1 WHERE a BETWEEN 1700 AND 1750;

EXPLAIN QUERY PLAN
  SELECT * FROM t1 WHERE a BETWEEN 1 AND 500

EXPLAIN QUERY PLAN
  SELECT * FROM t1 WHERE a BETWEEN 3000 AND 3000000

EXPLAIN QUERY PLAN
  SELECT * FROM t1 WHERE a<500

EXPLAIN QUERY PLAN
  SELECT * FROM t1 WHERE a>2500

EXPLAIN QUERY PLAN
  SELECT * FROM t1 WHERE a>1900

EXPLAIN QUERY PLAN
  SELECT * FROM t1 WHERE a>1100

EXPLAIN QUERY PLAN
  SELECT * FROM t1 WHERE a<1100

EXPLAIN QUERY PLAN
  SELECT * FROM t1 WHERE a<1900

DROP TABLE t1;
  CREATE TABLE t1(a,b,c);
  WITH RECURSIVE
    cnt(x) AS (VALUES(1000) UNION ALL SELECT x+1 FROM cnt WHERE x<2000)
  INSERT INTO t1(a,b,c) SELECT x, x, 123 FROM cnt;
  CREATE INDEX t1ca ON t1(c,a);
  ANALYZE;

EXPLAIN QUERY PLAN
  SELECT * FROM t1 WHERE a BETWEEN 500 AND 2500 AND c=123;

EXPLAIN QUERY PLAN
  SELECT * FROM t1 WHERE a BETWEEN 2900 AND 3000 AND c=123;

EXPLAIN QUERY PLAN
  SELECT * FROM t1 WHERE a BETWEEN 1700 AND 1750 AND c=123;

EXPLAIN QUERY PLAN
  SELECT * FROM t1 WHERE a BETWEEN 1 AND 500 AND c=123

EXPLAIN QUERY PLAN
  SELECT * FROM t1 WHERE a BETWEEN 3000 AND 3000000 AND c=123

EXPLAIN QUERY PLAN
  SELECT * FROM t1 WHERE a<500 AND c=123

EXPLAIN QUERY PLAN
  SELECT * FROM t1 WHERE a>2500 AND c=123

EXPLAIN QUERY PLAN
  SELECT * FROM t1 WHERE a>1900 AND c=123

EXPLAIN QUERY PLAN
  SELECT * FROM t1 WHERE a>1100 AND c=123

EXPLAIN QUERY PLAN
  SELECT * FROM t1 WHERE a<1100 AND c=123

EXPLAIN QUERY PLAN
  SELECT * FROM t1 WHERE a<1900 AND c=123

DROP INDEX t1ca;
  CREATE INDEX t1ca ON t1(c ASC,a DESC);
  ANALYZE;

EXPLAIN QUERY PLAN
  SELECT * FROM t1 WHERE a BETWEEN 500 AND 2500 AND c=123;

EXPLAIN QUERY PLAN
  SELECT * FROM t1 WHERE a BETWEEN 2900 AND 3000 AND c=123;

EXPLAIN QUERY PLAN
  SELECT * FROM t1 WHERE a BETWEEN 1700 AND 1750 AND c=123;

EXPLAIN QUERY PLAN
  SELECT * FROM t1 WHERE a BETWEEN 1 AND 500 AND c=123

EXPLAIN QUERY PLAN
  SELECT * FROM t1 WHERE a BETWEEN 3000 AND 3000000 AND c=123

EXPLAIN QUERY PLAN
  SELECT * FROM t1 WHERE a<500 AND c=123

EXPLAIN QUERY PLAN
  SELECT * FROM t1 WHERE a>2500 AND c=123

EXPLAIN QUERY PLAN
  SELECT * FROM t1 WHERE a>1900 AND c=123

EXPLAIN QUERY PLAN
  SELECT * FROM t1 WHERE a>1100 AND c=123

EXPLAIN QUERY PLAN
  SELECT * FROM t1 WHERE a<1100 AND c=123

EXPLAIN QUERY PLAN
  SELECT * FROM t1 WHERE a<1900 AND c=123

PRAGMA encoding = 'UTF-16';
  CREATE TABLE t0 (c1 TEXT);
  INSERT INTO t0 VALUES ('');
  CREATE INDEX i0 ON t0(c1);
  ANALYZE;
  SELECT * FROM t0 WHERE t0.c1 BETWEEN '' AND (ABS(''));

CREATE TABLE t1(x);
  CREATE INDEX i1 ON t1(x,x,x,x,x||2);
  CREATE INDEX i2 ON t1(1<2);
  WITH RECURSIVE c(x) AS (VALUES(1) UNION ALL SELECT x+1 FROM c WHERE x<1000)
    INSERT INTO t1(x) SELECT x FROM c;
  ANALYZE;

SELECT count(*)>1 FROM sqlite_stat4 WHERE idx='i2' AND neq='1000 1';

SELECT count(*) FROM sqlite_stat4 WHERE idx='i2' AND neq<>'1000 1';

SELECT count(*)>1 FROM sqlite_stat4 WHERE idx='i1' AND neq='1 1 1 1 1 1';

SELECT count(*) FROM sqlite_stat4 WHERE idx='i1' AND neq<>'1 1 1 1 1 1';

CREATE TABLE t1(a TEXT COLLATE binary);
  CREATE INDEX t1x ON t1(a);
  INSERT INTO t1(a) VALUES(0),('apple'),(NULL),(''),('banana');
  ANALYZE;
  SELECT format('(%s)',a) FROM t1 WHERE t1.a > CAST(zeroblob(5) AS TEXT);

SELECT format('(%s)',a) FROM t1 WHERE t1.a <= CAST(zeroblob(5) AS TEXT);

