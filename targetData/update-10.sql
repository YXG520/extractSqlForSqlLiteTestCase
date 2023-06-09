

    DROP TABLE test1;
    CREATE TABLE t1(
       a integer primary key,
       b UNIQUE, 
       c, d,
       e, f,
       UNIQUE(c,d)
    );
    INSERT INTO t1 VALUES(1,2,3,4,5,6);
    INSERT INTO t1 VALUES(2,3,4,4,6,7);
    SELECT * FROM t1
  


    UPDATE t1 SET a=1, e=9 WHERE f=6;
    SELECT * FROM t1;
  


    UPDATE t1 SET a=1, e=10 WHERE f=7;
    SELECT * FROM t1;
  


    SELECT * FROM t1;
  


    UPDATE t1 SET b=2, e=11 WHERE f=6;
    SELECT * FROM t1;
  


    UPDATE t1 SET b=2, e=12 WHERE f=7;
    SELECT * FROM t1;
  


    SELECT * FROM t1;
  


    UPDATE t1 SET c=3, d=4, e=13 WHERE f=6;
    SELECT * FROM t1;
  


    UPDATE t1 SET c=3, d=4, e=14 WHERE f=7;
    SELECT * FROM t1;
  


    SELECT * FROM t1;
  
