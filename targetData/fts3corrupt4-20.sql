



  PRAGMA writable_schema = 1;
  BEGIN;
  WITH RECURSIVE c(x) AS (VALUES(1) UNION ALL SELECT x+1 FROM c WHERE x<10)
    INSERT INTO t1(a) SELECT randomblob(3000) FROM c;



  INSERT INTO t1(t1) VALUES('optimize');

