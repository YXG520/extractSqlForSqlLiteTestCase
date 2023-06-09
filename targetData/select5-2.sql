

    SELECT y, count(*) FROM t1 GROUP BY z ORDER BY y
  


    SELECT y, count(*) FROM t1 GROUP BY temp.t1.y ORDER BY y
  


    SELECT y, count(*) FROM t1 GROUP BY z(y) ORDER BY y
  


    SELECT y, count(*) FROM t1 GROUP BY y HAVING count(*)<3 ORDER BY y
  


    SELECT y, count(*) FROM t1 GROUP BY y HAVING z(y)<3 ORDER BY y
  


    SELECT y, count(*) FROM t1 GROUP BY y HAVING count(*)<z ORDER BY y
  
