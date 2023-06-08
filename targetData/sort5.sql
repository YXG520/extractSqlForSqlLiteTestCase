PRAGMA mmap_size = 10000000;
  PRAGMA cache_size = 10;
  CREATE TABLE t1(a, b);

INSERT INTO t1 VALUES($i, randomblob(2000)) 
CREATE INDEX i1 ON t1(b);

CREATE TABLE t1(x) 
PRAGMA temp_store = 1 
WITH x(i, j) AS (
        SELECT 1, randomblob(100)
        UNION ALL
        SELECT i+1, randomblob(100) FROM x WHERE i<10000
      )
      SELECT * FROM x ORDER BY j;
    
