

    SELECT (SELECT a FROM t1 ORDER BY a), (SELECT a FROM t1 ORDER BY a DESC)
  


    SELECT 1 IN (SELECT a FROM t1 ORDER BY a);
  


    SELECT 2 IN (SELECT a FROM t1 ORDER BY a DESC);
  
