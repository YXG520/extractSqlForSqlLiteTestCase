

    CREATE TABLE t2(x,y);
    INSERT INTO t2 SELECT * FROM t1;
    SELECT y, typeof(y) FROM t2 WHERE x=3;
  


    CREATE TABLE t3 AS SELECT * FROM t1;
    SELECT b, typeof(b) FROM t3 WHERE a=3;
  
