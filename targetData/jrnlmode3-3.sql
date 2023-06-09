

PRAGMA main.journal_mode


        CREATE TABLE t1(x);
        BEGIN;
        INSERT INTO t1 VALUES($cnt);
      


        ROLLBACK;
        SELECT * FROM t1;
      



        DROP TABLE IF EXISTS t1;
        CREATE TABLE t1(x);
        BEGIN;
        INSERT INTO t1 VALUES(1);
      

        SELECT * FROM t1;
      
