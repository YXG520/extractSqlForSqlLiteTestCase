


    BEGIN;
    ROLLBACK;
  


    DROP TABLE t1;
    CREATE TABLE t1(a PRIMARY KEY, b);
    INSERT INTO t1 VALUES('one', 'I');
    INSERT INTO t1 VALUES('one', 'I');
  


    SELECT count(*) FROM t1;
  
