

    CREATE TABLE t1(a,b);
    SELECT a FROM t1 WHERE max(b)<10 GROUP BY a;
  
