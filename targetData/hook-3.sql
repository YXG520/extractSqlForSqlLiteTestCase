



    CREATE TABLE t2(a,b);
  


    INSERT INTO t2 VALUES(1,2);
    INSERT INTO t2 SELECT a+1, b+1 FROM t2;
    INSERT INTO t2 SELECT a+2, b+2 FROM t2;
  

SELECT * FROM t2

    INSERT INTO t2 VALUES(5,6);
  

SELECT * FROM t2

    INSERT INTO t2 VALUES(6,7);
  


SELECT * FROM t2


    INSERT INTO t2 VALUES(7,8);
  

CREATE TABLE t3(x,y)
INSERT INTO t3 VALUES(1,2)
INSERT INTO t3 VALUES(11,12)
INSERT INTO t3 VALUES(3,4)

    SELECT * FROM t3 ORDER BY x;
  
