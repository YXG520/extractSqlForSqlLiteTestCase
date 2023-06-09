

  PRAGMA cache_size = 10;
  CREATE TABLE t1(a, b);
  INSERT INTO t1 VALUES(1, randomblob(400));
  PRAGMA journal_mode = wal;
  WITH s(i) AS (
    SELECT 2 UNION ALL SELECT i+1 FROM s WHERE i<100
  ) 
  INSERT INTO t1 SELECT i, randomblob(400) FROM s;



    BEGIN;
      SELECT count(*) FROM t1;
  

 
    SELECT count(*) FROM t1;
    CREATE TABLE t2(x); 
  

 PRAGMA wal_checkpoint 


    COMMIT;
    SELECT * FROM sqlite_master;
    BEGIN;
  

    SELECT count(*) FROM t1
  
