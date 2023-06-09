

  PRAGMA cache_size = 5;
  CREATE TABLE t2(a BLOB);
  CREATE INDEX i2 ON t2(a);
  WITH s(i) AS (
    SELECT 1 UNION ALL SELECT i+1 FROM s WHERE i<100
  ) INSERT INTO t2 SELECT randomblob(500) FROM s;




  BEGIN;
    UPDATE t2 SET a=randomblob(499);
    SAVEPOINT two;
      UPDATE t2 SET a=randomblob(498);
    ROLLBACK TO two;
  COMMIT;
  PRAGMA integrity_check;


B

 PRAGMA integrity_check 
