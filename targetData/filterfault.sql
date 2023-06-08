CREATE TABLE t1(a, b, c, d);
  INSERT INTO t1 VALUES(1, 2, 3, 4);
  INSERT INTO t1 VALUES(5, 6, 7, 8);
  INSERT INTO t1 VALUES(9, 10, 11, 12);

SELECT sum(a) FILTER (WHERE b<5),
           count() FILTER (WHERE d!=c) 
      FROM t1 GROUP BY c ORDER BY 1;
  
