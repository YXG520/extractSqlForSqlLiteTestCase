

  CREATE TABLE t1(a, b, c);
  PRAGMA journal_mode = wal;
  INSERT INTO t1 VALUES(1, 2, 3);
  INSERT INTO t1 VALUES(4, 5, 6);
  INSERT INTO t1 VALUES(7, 8, 9);


 INSERT INTO t1 VALUES(10, 11, 12); 
 INSERT INTO t1 VALUES(13, 14, 15); 


  BEGIN;
    SELECT * FROM t1


 SELECT * FROM t1 

 SELECT * FROM t1 

 PRAGMA wal_checkpoint 


  SELECT * FROM t1




  SELECT * FROM t1


 COMMIT ; BEGIN 

 COMMIT 

    PRAGMA wal_checkpoint;
    DELETE FROM t1 WHERE a = 1;
  

    DELETE FROM t1 WHERE a = 4;
  

 
    BEGIN;
      SELECT * FROM t1
  

 SELECT * FROM t1 


 SELECT * FROM t1 


  BEGIN;
    SELECT * FROM t1



 COMMIT 
