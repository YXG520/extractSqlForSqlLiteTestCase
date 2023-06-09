

    PRAGMA read_uncommitted = 1;
    CREATE TABLE t1(a,b,c);
    BEGIN;
    SELECT * FROM sqlite_master;
  

  SELECT * FROM sqlite_master;
  INSERT INTO t1 VALUES(1,2,3);
  BEGIN TRANSACTION;
  INSERT INTO t1 VALUES(1,2,3);
  INSERT INTO t1 VALUES(4,5,6);
  ROLLBACK;
  SELECT * FROM t1;
  BEGIN TRANSACTION;
  INSERT INTO t1 VALUES(1,2,3);
  INSERT INTO t1 VALUES(4,5,6);
  COMMIT;
  SELECT * FROM t1;
  DELETE FROM t1 WHERE a<100;



      SELECT * FROM t1;
    

pragma integrity_check
