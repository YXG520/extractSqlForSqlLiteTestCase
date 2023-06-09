

  CREATE TABLE t1(x);
  CREATE TABLE t2(y);
  CREATE TABLE t3(z);

  CREATE INDEX i1 ON t1(x);
  CREATE INDEX i2 ON t2(y);

  INSERT INTO t1 VALUES(1);
  INSERT INTO t2 VALUES(1);
  ANALYZE;

  SELECT * FROM t1 WHERE x=1;
  SELECT * FROM t2 WHERE y=1;


 BEGIN EXCLUSIVE 
 PRAGMA optimize 
 COMMIT 

 PRAGMA optimize 


    BEGIN;
    SELECT count(*) FROM sqlite_master;
  

 PRAGMA optimize 

 COMMIT 

    WITH s(i) AS (
      SELECT 1 UNION ALL SELECT i+1 FROM s WHERE i<1000
    )
    INSERT INTO t1 SELECT i FROM s;
  

    BEGIN;
    SELECT count(*) FROM sqlite_master;
  

 PRAGMA optimize 
 COMMIT 

 PRAGMA optimize 
