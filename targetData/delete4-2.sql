

  CREATE TABLE t1(x INTEGER PRIMARY KEY, y, z);
  INSERT INTO t1 VALUES(1, 0, randomblob(200));
  INSERT INTO t1 VALUES(2, 1, randomblob(200));
  INSERT INTO t1 VALUES(3, 0, randomblob(200));
  INSERT INTO t1 VALUES(4, 1, randomblob(200));
  INSERT INTO t1 VALUES(5, 0, randomblob(200));
  INSERT INTO t1 VALUES(6, 1, randomblob(200));
  INSERT INTO t1 VALUES(7, 0, randomblob(200));
  INSERT INTO t1 VALUES(8, 1, randomblob(200));



  DELETE FROM t1 WHERE y=1;



  SELECT x FROM t1;

