

    SELECT log, min(n) FROM t1 GROUP BY log ORDER BY log;
  


    SELECT log, min(n) FROM t1 GROUP BY log ORDER BY log DESC;
  


    SELECT log, min(n) FROM t1 GROUP BY log ORDER BY 1;
  


    SELECT log, min(n) FROM t1 GROUP BY log ORDER BY 1 DESC;
  


    CREATE INDEX i1 ON t1(log);
    SELECT log, min(n) FROM t1 GROUP BY log ORDER BY log;
  


    SELECT log, min(n) FROM t1 GROUP BY log ORDER BY log DESC;
  


    SELECT log, min(n) FROM t1 GROUP BY log ORDER BY 1;
  


    SELECT log, min(n) FROM t1 GROUP BY log ORDER BY 1 DESC;
  
