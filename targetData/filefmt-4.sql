

  PRAGMA auto_vacuum = 1;
  CREATE TABLE t1(x, y);
  CREATE TABLE t2(x, y);

  INSERT INTO t1 VALUES(randomblob(100), randomblob(100));
  INSERT INTO t1 VALUES(randomblob(100), randomblob(100));
  INSERT INTO t1 VALUES(randomblob(100), randomblob(100));
  INSERT INTO t1 VALUES(randomblob(100), randomblob(100));
  INSERT INTO t1 VALUES(randomblob(100), randomblob(100));
  INSERT INTO t1 VALUES(randomblob(100), randomblob(100));

  INSERT INTO t2 SELECT randomblob(100), randomblob(100) FROM t1;
  INSERT INTO t2 SELECT randomblob(100), randomblob(100) FROM t1;
  INSERT INTO t2 SELECT randomblob(100), randomblob(100) FROM t1;
  INSERT INTO t2 SELECT randomblob(100), randomblob(100) FROM t1;


 INSERT INTO t2 SELECT * FROM t1 


 PRAGMA integrity_check 
