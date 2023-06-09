

  PRAGMA auto_vacuum = OFF;
  CREATE TABLE t2(a, b);
  CREATE INDEX i2 ON t2(a, b);
  WITH x(i) AS ( SELECT 1 UNION ALL SELECT i+1 FROM x WHERE i<20 )
  INSERT INTO t2 SELECT randomblob(100), randomblob(100) FROM x ORDER BY 1, 2;
  PRAGMA page_count;




    PRAGMA auto_vacuum = OFF;
    PRAGMA page_size = 8192;
    CREATE TABLE t1(a, b);
    CREATE INDEX i1 ON t1(a, b);
    WITH x(i) AS ( SELECT 1 UNION ALL SELECT i+1 FROM x WHERE i<100 )
    INSERT INTO t1 SELECT randomblob(100), randomblob(100) FROM x ORDER BY 1, 2;
    PRAGMA page_count;
  



    SELECT count(*) FROM t1;
    PRAGMA integrity_check;
    PRAGMA page_size;
  

 UPDATE t1 SET a=randomblob(100) 


