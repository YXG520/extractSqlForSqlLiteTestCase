
SELECT log, count(*) FROM t1 GROUP BY log HAVING log>=4 ORDER BY log


    SELECT log, count(*) FROM t1 
    GROUP BY log 
    HAVING count(*)>=4 
    ORDER BY log
  


    SELECT log, count(*) FROM t1 
    GROUP BY log 
    HAVING count(*)>=4 
    ORDER BY max(n)+0
  


    SELECT log AS x, count(*) AS y FROM t1 
    GROUP BY x
    HAVING y>=4 
    ORDER BY max(n)+0
  


    SELECT log AS x FROM t1 
    GROUP BY x
    HAVING count(*)>=4 
    ORDER BY max(n)+0
  
