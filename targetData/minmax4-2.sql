

    CREATE TABLE t2(a,b,c);
    INSERT INTO t2 VALUES
         (1,null,2),
         (1,2,3),
         (1,1,4),
         (2,3,5);
    SELECT a, max(b), c FROM t2 GROUP BY a ORDER BY a;
  


    SELECT a, min(b), c FROM t2 GROUP BY a ORDER BY a;
  


    SELECT a, min(b), avg(b), count(b), c FROM t2 GROUP BY a ORDER BY a DESC;
  


    SELECT a, min(b), max(b), c FROM t2 GROUP BY a ORDER BY a;
  


    SELECT a, max(b), min(b), c FROM t2 GROUP BY a ORDER BY a;
  


    SELECT a, max(b), b, max(c), c FROM t2 GROUP BY a ORDER BY a;
  


    SELECT a, min(b), b, min(c), c FROM t2 GROUP BY a ORDER BY a;
  

  1 { CREATE INDEX i1 ON t1(a) 
