

    BEGIN TRANSACTION;
    CREATE TEMPORARY TABLE t2(x,y);
    INSERT INTO t2 VALUES(1,2);
    SELECT * FROM t2;
  

ROLLBACK
SELECT * FROM t2


    BEGIN TRANSACTION;
    CREATE TEMPORARY TABLE t2(x,y);
    INSERT INTO t2 VALUES(1,2);
    SELECT * FROM t2;
  

COMMIT
SELECT * FROM t2

SELECT * FROM t2