

        PRAGMA journal_mode = truncate;
        CREATE TABLE t4(a, b);
        BEGIN;
          INSERT INTO t4 VALUES(1, 2);
          PRAGMA journal_mode = memory;
      



        COMMIT;
        SELECT * FROM t4;
      



        PRAGMA journal_mode = MEMORY;
        BEGIN;
          INSERT INTO t4 VALUES(3, 4);
      


        COMMIT;
        SELECT * FROM t4;
      



        PRAGMA journal_mode = DELETE;
        BEGIN IMMEDIATE; INSERT INTO t4 VALUES(1,2); COMMIT;
      
