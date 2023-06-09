

  PRAGMA temp_store = memory;
  CREATE TABLE t1(a,b,c);
  INSERT INTO t1 VALUES(1, 2, 3);



  BEGIN;
    INSERT INTO t1 VALUES(4, 5, 6);
    SAVEPOINT one;
      INSERT INTO t1 VALUES(7, 8, 9);
    ROLLBACK TO one;
    SELECT * FROM t1;



  COMMIT;

