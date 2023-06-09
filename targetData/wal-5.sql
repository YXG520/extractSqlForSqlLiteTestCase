

    CREATE TEMP TABLE t2(a, b);
    INSERT INTO t2 VALUES(1, 2);
  


    BEGIN;
      INSERT INTO t2 VALUES(3, 4);
      SELECT * FROM t2;
  


    ROLLBACK;
    SELECT * FROM t2;
  


    CREATE TEMP TABLE t3(x UNIQUE);
    BEGIN;
      INSERT INTO t2 VALUES(3, 4);
      INSERT INTO t3 VALUES('abc');
  
 INSERT INTO t3 VALUES('abc') 


    COMMIT;
    SELECT * FROM t2;
  
