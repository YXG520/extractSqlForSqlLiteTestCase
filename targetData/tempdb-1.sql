

    BEGIN;
    CREATE TABLE t1(x UNIQUE);
    CREATE TABLE t2(y);
    INSERT INTO t2 VALUES('hello');
    INSERT INTO t2 VALUES(NULL);
  

    INSERT INTO t1
    SELECT CASE WHEN y IS NULL THEN test_error('oops', 11) ELSE y END
      FROM t2;
  


    SELECT * FROM t1
  
