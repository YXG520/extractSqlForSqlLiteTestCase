

    CREATE TABLE t1(x PRIMARY KEY);
    CREATE TABLE t2(y PRIMARY KEY);
    BEGIN;
      INSERT INTO t1 VALUES(randomblob(100));
      INSERT INTO t2 VALUES(randomblob(100));
      INSERT INTO t1 VALUES(randomblob(100));
      INSERT INTO t2 VALUES(randomblob(100));
  

 PRAGMA integrity_check 

 COMMIT 

 PRAGMA integrity_check 

 
  SELECT count(*) FROM t1;
  SELECT count(*) FROM t2;

