

      BEGIN;
        CREATE TABLE t1(a PRIMARY KEY, b);
        INSERT INTO t1 VALUES(1, 2);
      COMMIT;
      PRAGMA journal_mode = off;
    


      BEGIN;
      INSERT INTO t1 VALUES(3, 4);
      INSERT INTO t1 SELECT a+4,b+4  FROM t1;
      COMMIT;
    


      BEGIN;
        INSERT INTO t1 VALUES(9, 10);
        SAVEPOINT s1;
          INSERT INTO t1 VALUES(11, 12);
      COMMIT;
    


      BEGIN;
        INSERT INTO t1 VALUES(13, 14);
        SAVEPOINT s1;
          INSERT INTO t1 VALUES(15, 16);
        ROLLBACK TO s1;
      ROLLBACK;
      SELECT * FROM t1;
    
