
 PRAGMA journal_mode = WAL 

 SELECT * FROM t1 


  PRAGMA locking_mode = EXCLUSIVE;
  PRAGMA locking_mode = NORMAL;
  PRAGMA locking_mode = EXCLUSIVE;
  INSERT INTO t1 VALUES(5, 6);


 SELECT * FROM t1 


  PRAGMA locking_mode = NORMAL;
  SELECT * FROM t1;


 SELECT * FROM t1 


  PRAGMA locking_mode = EXCLUSIVE;
  INSERT INTO t1 VALUES(7, 8);


 SELECT * FROM t1 

 PRAGMA journal_mode = WAL 
