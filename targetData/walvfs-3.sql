

  CREATE TABLE t1(x);
  PRAGMA journal_mode = wal;
  WITH s(i) AS (
    SELECT 1 UNION ALL SELECT i+1 FROM s LIMIT 20
  )
  INSERT INTO t1 SELECT randomblob(750) FROM s;



  PRAGMA wal_checkpoint

 SELECT hex(randomblob(4000)) 


  PRAGMA wal_checkpoint


