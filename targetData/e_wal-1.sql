

  PRAGMA journal_mode = WAL;



  PRAGMA locking_mode = EXCLUSIVE;
  PRAGMA journal_mode = WAL;



  CREATE TABLE t1(x, y);
  INSERT INTO t1 VALUES(1, 2);



 SELECT * FROM t1 

 PRAGMA locking_mode = EXCLUSIVE 
 SELECT * FROM t1 


 INSERT INTO t1 VALUES(3, 4) 

 PRAGMA locking_mode = EXCLUSIVE 
 INSERT INTO t1 VALUES(3, 4) 
 SELECT * FROM t1 

