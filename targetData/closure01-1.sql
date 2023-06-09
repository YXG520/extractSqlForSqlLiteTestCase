

  BEGIN;
  CREATE TABLE t1(x INTEGER PRIMARY KEY, y INTEGER);
  WITH RECURSIVE
    cnt(i) AS (VALUES(1) UNION ALL SELECT i+1 FROM cnt LIMIT 131072)
  INSERT INTO t1(x, y) SELECT i, nullif(i,1)/2 FROM cnt;
  CREATE INDEX t1y ON t1(y);
  COMMIT;
  CREATE VIRTUAL TABLE cx 
   USING transitive_closure(tablename=t1, idcolumn=x, parentcolumn=y);



  SELECT count(*), depth FROM cx WHERE root=1 GROUP BY depth ORDER BY 1;

