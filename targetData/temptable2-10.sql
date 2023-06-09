

  PRAGMA cache_size = 50;
  PRAGMA page_size = 1024;
  CREATE TABLE t1(a, b, PRIMARY KEY(a)) WITHOUT ROWID;
  CREATE INDEX i1 ON t1(a);
  CREATE TABLE t2(x, y);
  INSERT INTO t2 VALUES(1, 2);



  BEGIN;
    WITH x(i) AS ( SELECT 1 UNION ALL SELECT i+1 FROM x WHERE i<500 )
      INSERT INTO t1 SELECT randomblob(100), randomblob(100) FROM x;
  COMMIT;
  INSERT INTO t2 VALUES(3, 4);


 PRAGMA mmap_size = 512000 

 SELECT * FROM t2 
1 2 3 4

 PRAGMA integrity_check 
