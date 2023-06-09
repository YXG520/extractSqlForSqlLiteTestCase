

  PRAGMA auto_vacuum = 1;
  CREATE TABLE t1(a PRIMARY KEY, b);
  WITH data(i) AS (
    SELECT 1 UNION ALL SELECT i+1 FROM data
  )
  INSERT INTO t1 SELECT i, randomblob(600) FROM data LIMIT 20;
  PRAGMA page_count;


 PRAGMA incremental_vacuum; 

PRAGMA auto_vacuum = INCREMENTAL

SQLITE_CORRUPT

database disk image is malformed

SQLITE_CORRUPT

SQLITE_CORRUPT

database disk image is malformed

PRAGMA auto_vacuum = INCREMENTAL

SQLITE_CORRUPT

database disk image is malformed

SELECT 1

SQLITE_OK

not an error

SQLITE_CORRUPT

SQLITE_CORRUPT

database disk image is malformed
