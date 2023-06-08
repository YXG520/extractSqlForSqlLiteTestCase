ANALYZE

ANALYZE t1

ANALYZE main

ANALYZE main.t1

REINDEX;
  
REINDEX t1;
  
REINDEX main.t1;
  
REINDEX nocase;
  
CREATE TABLE t1(a, b);
  CREATE INDEX i1 ON t1(a, b);
  INSERT INTO t1 VALUES('abc', 'w'); -- rowid=1
  INSERT INTO t1 VALUES('abc', 'x'); -- rowid=2
  INSERT INTO t1 VALUES('abc', 'y'); -- rowid=3
  INSERT INTO t1 VALUES('abc', 'z'); -- rowid=4

  INSERT INTO t1 VALUES('def', 'w'); -- rowid=5
  INSERT INTO t1 VALUES('def', 'x'); -- rowid=6
  INSERT INTO t1 VALUES('def', 'y'); -- rowid=7
  INSERT INTO t1 VALUES('def', 'z'); -- rowid=8

  ANALYZE;

SELECT rowid FROM t1 WHERE a='abc' AND b='x' 
SELECT rowid FROM t1 WHERE a='abc' AND b<'y' 
PRAGMA cache_size = 5;

WITH r(x,y) AS (
      SELECT 1, randomblob(100)
      UNION ALL
      SELECT x+1, randomblob(100) FROM r
      LIMIT 1000
    )
    SELECT count(x), length(y) FROM r GROUP BY (x%5)
  
