

    CREATE TABLE t1(x, y); INSERT INTO t1 VALUES(11,22);
    CREATE TABLE t2(y, z); INSERT INTO t2 VALUES(33,44);
    SELECT 1 AS y FROM t1, t2 ORDER BY y;
  


    SELECT 1 AS yy FROM t1, t2 ORDER BY y;
  


    CREATE TABLE t3(x,y); INSERT INTO t3 VALUES(11,44),(33,22);
    SELECT x AS y FROM t3 ORDER BY y;
  


    SELECT x AS yy FROM t3 ORDER BY y;
  


    SELECT x AS yy FROM t3 ORDER BY yy;
  


    SELECT x AS yy FROM t3 ORDER BY 1;
  