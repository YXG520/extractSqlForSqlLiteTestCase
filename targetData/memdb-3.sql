

    CREATE TABLE t4(a,b,c,d);
    BEGIN;
    INSERT INTO t4 VALUES(1,2,3,4);
    SELECT * FROM t4;
  


    SELECT name FROM sqlite_master WHERE type='table';
  


    DROP TABLE t4;
    SELECT name FROM sqlite_master WHERE type='table';
  


    ROLLBACK;
    SELECT name FROM sqlite_master WHERE type='table';
  
