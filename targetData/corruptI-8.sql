

  PRAGMA auto_vacuum=0;
  CREATE TABLE t1(x);
  INSERT INTO t1 VALUES(zeroblob(300));
  INSERT INTO t1 VALUES(zeroblob(300));
  INSERT INTO t1 VALUES(zeroblob(300));
  INSERT INTO t1 VALUES(zeroblob(300));


 DELETE FROM t1 

 PRAGMA integrity_check 
