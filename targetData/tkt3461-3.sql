

    CREATE TABLE t2(c, d);
    INSERT INTO t2 VALUES(3, 4);
  
 PRAGMA vdbe_trace = 1; PRAGMA vdbe_listing=1 
 
    SELECT a, b+1 AS b_plus_one, c, d 
    FROM t1 LEFT JOIN t2 
    ON (a=c AND d=b_plus_one)
  
