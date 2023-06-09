
 PRAGMA auto_vacuum = full; 

    CREATE TABLE t1(a, b, UNIQUE(a, b));
    INSERT INTO t1 VALUES(1, randstr(1000,1000));
    INSERT INTO t1 VALUES(2, randstr(1000,1000));
  


    SAVEPOINT one;
      CREATE TABLE t2(a, b, UNIQUE(a, b));
      SAVEPOINT two;
        CREATE TABLE t3(a, b, UNIQUE(a, b));
  

 ROLLBACK TO two 

 
    CREATE TABLE t3(a, b, UNIQUE(a, b));
    ROLLBACK TO one;
  

 ROLLBACK 
 PRAGMA wal_checkpoint 


    DROP TABLE IF EXISTS t1;
    DROP TABLE IF EXISTS t2;
    DROP TABLE IF EXISTS t3;
  


    BEGIN;
      CREATE TABLE t1(a, b);
      CREATE TABLE t2(x, y);
      INSERT INTO t2 VALUES(1, 2);
      SAVEPOINT one;
        INSERT INTO t2 VALUES(3, 4);
        SAVEPOINT two;
          DROP TABLE t1;
        ROLLBACK TO two;
  
SELECT * FROM t2


SELECT * FROM t2
