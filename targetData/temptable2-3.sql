

  PRAGMA main.cache_size = 10;
  PRAGMA temp.cache_size = 10;

  CREATE TEMP TABLE t1(a, b);
  CREATE INDEX i1 ON t1(a, b);

  WITH x(i) AS ( SELECT 1 UNION ALL SELECT i+1 FROM x WHERE i<1000 )
  INSERT INTO t1 SELECT randomblob(100), randomblob(100) FROM x;

  SELECT count(*) FROM t1;



  BEGIN;
    UPDATE t1 SET b=randomblob(100) WHERE (rowid%10)==0;
  ROLLBACK;



  SELECT count(*) FROM t1;


 PRAGMA temp.integrity_check 
ok


  BEGIN;
    UPDATE t1 SET b=randomblob(100) WHERE (rowid%10)==0;
    SAVEPOINT abc;
      UPDATE t1 SET b=randomblob(100) WHERE (rowid%10)==1;
    ROLLBACK TO abc;
    UPDATE t1 SET b=randomblob(100) WHERE (rowid%10)==2;
  COMMIT;


 PRAGMA temp.integrity_check 
ok
