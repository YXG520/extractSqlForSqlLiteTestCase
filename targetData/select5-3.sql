

    SELECT x, count(*), avg(y) FROM t1 GROUP BY x HAVING x<4 ORDER BY x
  
