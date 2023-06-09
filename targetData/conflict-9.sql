

    PRAGMA count_changes=0;
    CREATE TABLE t2(
      a INTEGER UNIQUE ON CONFLICT IGNORE,
      b INTEGER UNIQUE ON CONFLICT FAIL,
      c INTEGER UNIQUE ON CONFLICT REPLACE,
      d INTEGER UNIQUE ON CONFLICT ABORT,
      e INTEGER UNIQUE ON CONFLICT ROLLBACK
    );
    CREATE TABLE t3(x);
    INSERT INTO t3 VALUES(1);
    SELECT * FROM t3;
  


    INSERT INTO t2 VALUES(1,1,1,1,1);
    INSERT INTO t2 VALUES(2,2,2,2,2);
    SELECT * FROM t2;
  


    INSERT INTO t2 VALUES(1,3,3,3,3);
    SELECT * FROM t2;
  


    UPDATE t2 SET a=a+1 WHERE a=1;
    SELECT * FROM t2;
  


    INSERT INTO t2 VALUES(3,1,3,3,3);
    SELECT * FROM t2;
  


    UPDATE t2 SET b=b+1 WHERE b=1;
    SELECT * FROM t2;
  


    BEGIN;
    UPDATE t3 SET x=x+1;
    INSERT INTO t2 VALUES(3,1,3,3,3);
    SELECT * FROM t2;
  

COMMIT
SELECT * FROM t3


    BEGIN;
    UPDATE t3 SET x=x+1;
    UPDATE t2 SET b=b+1 WHERE b=1;
    SELECT * FROM t2;
  

COMMIT
SELECT * FROM t3


    INSERT INTO t2 VALUES(3,3,3,1,3);
    SELECT * FROM t2;
  


    UPDATE t2 SET d=d+1 WHERE d=1;
    SELECT * FROM t2;
  


    BEGIN;
    UPDATE t3 SET x=x+1;
    INSERT INTO t2 VALUES(3,3,3,1,3);
    SELECT * FROM t2;
  

COMMIT
SELECT * FROM t3


    BEGIN;
    UPDATE t3 SET x=x+1;
    UPDATE t2 SET d=d+1 WHERE d=1;
    SELECT * FROM t2;
  

COMMIT
SELECT * FROM t3


    INSERT INTO t2 VALUES(3,3,3,3,1);
    SELECT * FROM t2;
  


    UPDATE t2 SET e=e+1 WHERE e=1;
    SELECT * FROM t2;
  


    BEGIN;
    UPDATE t3 SET x=x+1;
    INSERT INTO t2 VALUES(3,3,3,3,1);
    SELECT * FROM t2;
  

COMMIT
SELECT * FROM t3


    BEGIN;
    UPDATE t3 SET x=x+1;
    UPDATE t2 SET e=e+1 WHERE e=1;
    SELECT * FROM t2;
  

COMMIT
SELECT * FROM t3


    INSERT INTO t2 VALUES(3,3,1,3,3);
    SELECT * FROM t2;
  


    UPDATE t2 SET c=c-1 WHERE c=2;
    SELECT * FROM t2;
  


    BEGIN;
    UPDATE t3 SET x=x+1;
    INSERT INTO t2 VALUES(3,3,1,3,3);
    SELECT * FROM t2;
  

COMMIT
SELECT * FROM t3