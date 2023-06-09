

    CREATE TABLE t1(x);
    INSERT INTO t1 VALUES('ok');
  

SELECT * FROM t1

    BEGIN;
      INSERT INTO t1 VALUES('ko');
  
