

    CREATE TABLE t4(a PRIMARY KEY, b);
    INSERT INTO t4 VALUES(1, 'one');
  


    BEGIN;
      INSERT INTO t4 VALUES(2, 'two');
      SAVEPOINT sp1;
        INSERT INTO t4 VALUES(3, 'three');
        SAVEPOINT sp2;
          INSERT OR ROLLBACK INTO t4 VALUES(1, 'one');
  


 SAVEPOINT one 
