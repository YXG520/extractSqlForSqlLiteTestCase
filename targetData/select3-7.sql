

    CREATE TABLE t2(a,b);
    INSERT INTO t2 VALUES(1,2);
    SELECT a, sum(b) FROM t2 WHERE b=5 GROUP BY a;
  


    SELECT a, sum(b) FROM t2 WHERE b=5;
  
