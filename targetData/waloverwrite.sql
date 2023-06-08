CREATE TABLE t1(x, y);
    CREATE TABLE t2(x, y);
    CREATE INDEX i1y ON t1(y);
  
    WITH cnt(i) AS (
      SELECT 1 UNION ALL SELECT i+1 FROM cnt WHERE i<20
    )
    INSERT INTO t1 SELECT i, randomblob(800) FROM cnt;
  
PRAGMA journal_mode = wal
PRAGMA cache_size = 5
UPDATE t1 SET y = randomblob(799) WHERE x=$x 
PRAGMA integrity_check 
SELECT sum(length(y)) FROM t1 
SELECT sum(length(y)) FROM t1 
PRAGMA integrity_check 
PRAGMA wal_checkpoint 
UPDATE t1 SET y = randomblob(798) WHERE x=$x 
WITH cnt(i) AS (SELECT 1 UNION ALL SELECT i+1 FROM cnt WHERE i<20)
        INSERT INTO t2 SELECT i, randomblob(800) FROM cnt;
      
SAVEPOINT abc
UPDATE t1 SET y = randomblob(797) WHERE x=$x 
ROLLBACK TO abc
SELECT sum(length(y)) FROM t1 
SELECT sum(length(y)) FROM t1 
PRAGMA integrity_check 
