

    CREATE TABLE t1(a, b);
    INSERT INTO t1 VALUES(1, 2);
  

 SELECT a, b+1 AS b_plus_one FROM t1 WHERE a=1 

 PRAGMA vdbe_trace = 1; PRAGMA vdbe_listing=1 
 SELECT a, b+1 AS b_plus_one FROM t1 WHERE a=1 OR b_plus_one 
