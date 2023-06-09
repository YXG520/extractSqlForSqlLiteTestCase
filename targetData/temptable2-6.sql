

  PRAGMA main.cache_size = 10;
  PRAGMA temp.cache_size = 10;

  CREATE TEMP TABLE t1(x);
  INSERT INTO t1 VALUES('one');

  CREATE TEMP TABLE t2(a, b);
  CREATE INDEX i2 ON t2(a, b);
  WITH x(i) AS ( SELECT 1 UNION ALL SELECT i+1 FROM x WHERE i<500 )
  INSERT INTO t2 SELECT randomblob(100), randomblob(100) FROM x;



  UPDATE t1 SET x='two';             -- step 1
  BEGIN;
    UPDATE t2 SET a=randomblob(100); -- step 2
    SELECT * FROM t1;                -- step 3
  ROLLBACK;                          -- step 4

  SELECT count(*) FROM t2;
  SELECT * FROM t1;


