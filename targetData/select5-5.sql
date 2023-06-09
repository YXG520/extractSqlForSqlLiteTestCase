

    CREATE TABLE t2(a, b, c);
    INSERT INTO t2 VALUES(1, 2, 3);
    INSERT INTO t2 VALUES(1, 4, 5);
    INSERT INTO t2 VALUES(6, 4, 7);
    CREATE INDEX t2_idx ON t2(a);
  


    SELECT a FROM t2 GROUP BY a;
  


    SELECT a FROM t2 WHERE a>2 GROUP BY a;
  


    SELECT a, b FROM t2 GROUP BY a, b;
  


    SELECT a, b FROM t2 GROUP BY a;
  


    SELECT max(c), b*a, b, a FROM t2 GROUP BY b*a, b, a
  
