

  PRAGMA journal_mode = WAL;
  CREATE TABLE t1(a PRIMARY KEY, b TEXT);
  INSERT INTO t1 VALUES(1, 'one');
  INSERT INTO t1 VALUES(2, 'two');
  BEGIN;
    SELECT * FROM t1;



    SELECT * FROM t1;
    INSERT INTO t1 VALUES(3, 'three');
  

 
  INSERT INTO t1 VALUES('x', 'x') 




  SELECT * FROM t1;
  COMMIT;
  INSERT INTO t1 VALUES('x', 'x') 

