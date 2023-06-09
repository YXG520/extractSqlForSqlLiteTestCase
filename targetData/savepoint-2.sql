

    CREATE TABLE t1(a, b, c);
    BEGIN;
    INSERT INTO t1 VALUES(1, 2, 3);
    SAVEPOINT one;
    UPDATE t1 SET a = 2, b = 3, c = 4;
  
 SELECT * FROM t1 


    ROLLBACK TO one;
  
 SELECT * FROM t1 


    INSERT INTO t1 VALUES(4, 5, 6);
  
 SELECT * FROM t1 


    ROLLBACK TO one;
  
 SELECT * FROM t1 


    INSERT INTO t1 VALUES(7, 8, 9);
    SAVEPOINT two;
    INSERT INTO t1 VALUES(10, 11, 12);
  
 SELECT * FROM t1 


    ROLLBACK TO two;
  
 SELECT * FROM t1 


    INSERT INTO t1 VALUES(10, 11, 12);
  
 SELECT * FROM t1 


    ROLLBACK TO one;
  
 SELECT * FROM t1 


    INSERT INTO t1 VALUES('a', 'b', 'c');
    SAVEPOINT two;
    INSERT INTO t1 VALUES('d', 'e', 'f');
  
 SELECT * FROM t1 


    RELEASE two;
  
 SELECT * FROM t1 


    ROLLBACK;
  
 SELECT * FROM t1 
