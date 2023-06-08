PRAGMA auto_vacuum = 0;
  CREATE TABLE t1(a, b);
  PRAGMA journal_mode = wal;
  WITH s(i) AS (
    SELECT 1 UNION ALL SELECT i+1 FROM s LIMIT 30
  )
  INSERT INTO t1 SELECT randomblob(400), randomblob(400) FROM s;

PRAGMA wal_checkpoint;
    PRAGMA journal_size_limit = 10000;
    PRAGMA synchronous = full;
  
INSERT INTO t1 VALUES(1,1) 
PRAGMA auto_vacuum = 0;
  CREATE TABLE t1(a, b);
  PRAGMA journal_mode = wal;
  WITH s(i) AS (
    SELECT 1 UNION ALL SELECT i+1 FROM s LIMIT 30
  )
  INSERT INTO t1 SELECT randomblob(400), randomblob(400) FROM s;

PRAGMA cache_size = 2;
    BEGIN;
    UPDATE t1 SET a=randomblob(400);
    UPDATE t1 SET b=randomblob(400);
    UPDATE t1 SET a=randomblob(400);
    UPDATE t1 SET b=randomblob(400);
    UPDATE t1 SET a=randomblob(400);
    UPDATE t1 SET b=randomblob(400);
    UPDATE t1 SET a=randomblob(400);
    UPDATE t1 SET b=randomblob(400);
  
