

    CREATE TABLE t1(a,b);
    CREATE TABLE t2(x,y);
  
SELECT * FROM t1 WHERE a GLOB 'xyz*' AND (a=1 OR a=2)
 AND b!=$x
