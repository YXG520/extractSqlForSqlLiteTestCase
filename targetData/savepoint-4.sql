

    CREATE TABLE t2(d, e, f);
    SELECT sql FROM sqlite_master;
  


    BEGIN;
    CREATE TABLE t3(g,h);
    INSERT INTO t3 VALUES('I', 'II');
    SAVEPOINT one;
    DROP TABLE t3;
  


    CREATE TABLE t3(g, h, i);
    INSERT INTO t3 VALUES('III', 'IV', 'V');
  
SELECT * FROM t3

 ROLLBACK TO one; 
SELECT * FROM t3


    ROLLBACK;
    SELECT sql FROM sqlite_master;
  


    BEGIN;
    INSERT INTO t1 VALUES('o', 't', 't');
    SAVEPOINT sp1;
    CREATE TABLE t3(a, b, c);
    INSERT INTO t3 VALUES('z', 'y', 'x');
  
SELECT * FROM t3


    ROLLBACK TO sp1;
    CREATE TABLE t3(a);
    INSERT INTO t3 VALUES('value');
  
SELECT * FROM t3

