

    CREATE TABLE t1(a int, b int);
    INSERT INTO t1 VALUES(1,2);
    INSERT INTO t1 VALUES(3,4);
    INSERT INTO t1 VALUES(5,6);
  
SELECT * FROM t1 WHERE a = (SELECT count(*) FROM t1)

SELECT * FROM t1 WHERE a = (SELECT * FROM t1)

SELECT b from t1 where a = (SELECT a FROM t1 WHERE b=2)

SELECT b from t1 where a = (SELECT a FROM t1 WHERE b=4)

SELECT b from t1 where a = (SELECT a FROM t1 WHERE b=6)

SELECT b from t1 where a = (SELECT a FROM t1 WHERE b=8)


      SELECT b FROM t1
       WHERE a = (SELECT a FROM t1 UNION SELECT b FROM t1 ORDER BY 1);
    

SELECT b from t1 where a = coalesce((SELECT a FROM t1 WHERE b=5),1)


    CREATE TABLE t2(x int, y int);
    INSERT INTO t2 VALUES(1,2);
    INSERT INTO t2 VALUES(2,4);
    INSERT INTO t2 VALUES(3,8);
    INSERT INTO t2 VALUES(4,16);
  

    SELECT y from t2 
    WHERE x = (SELECT sum(b) FROM t1 where a notnull) - (SELECT sum(a) FROM t1)
  

DELETE FROM t2 WHERE x < 0.5*(SELECT max(x) FROM t2)
SELECT x FROM t2 ORDER BY x
