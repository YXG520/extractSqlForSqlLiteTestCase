
SELECT log, count(*) FROM t1 GROUP BY log ORDER BY log

SELECT log, min(n) FROM t1 GROUP BY log ORDER BY log

SELECT log, avg(n) FROM t1 GROUP BY log ORDER BY log

SELECT log, avg(n)+1 FROM t1 GROUP BY log ORDER BY log

SELECT log, avg(n)-min(n) FROM t1 GROUP BY log ORDER BY log

SELECT log*2+1, avg(n)-min(n) FROM t1 GROUP BY log ORDER BY log


    SELECT log*2+1 as x, count(*) FROM t1 GROUP BY x ORDER BY x
  


    SELECT log*2+1 AS x, count(*) AS y FROM t1 GROUP BY x ORDER BY y, x
  


    SELECT log*2+1 AS x, count(*) AS y FROM t1 GROUP BY x ORDER BY 10-(x+y)
  

#    SELECT log, count(*) FROM t1 GROUP BY 'x' ORDER BY log;
#  


    SELECT log, count(*) FROM t1 GROUP BY 0 ORDER BY log;
  


    SELECT log, count(*) FROM t1 GROUP BY 3 ORDER BY log;
  


    SELECT log, count(*) FROM t1 GROUP BY 1 ORDER BY log;
  


    SELECT log, count(*) FROM t1 GROUP BY ORDER BY log;
  


    SELECT log, count(*) FROM t1 GROUP BY;
  
