

  PRAGMA main.cache_size = 10;
  PRAGMA temp.cache_size = 10;

  CREATE TEMP TABLE t2(a, b);
  CREATE INDEX i2 ON t2(a, b);
  WITH x(i) AS ( SELECT 1 UNION ALL SELECT i+1 FROM x WHERE i<500 )
  INSERT INTO t2 SELECT randomblob(100), randomblob(100) FROM x;

  CREATE TEMP TABLE t1(a, b);
  CREATE INDEX i1 ON t1(a, b);
  INSERT INTO t1 VALUES(1, 2);


P


  BEGIN;
    UPDATE t1 SET a=2;
    UPDATE t2 SET a=randomblob(100);
    SELECT count(*) FROM t1;
  ROLLBACK;



  UPDATE t2 SET a=randomblob(100);

  SELECT * FROM t1;


 PRAGMA temp.integrity_check 
ok
