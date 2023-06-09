

      SELECT coalesce(min(x+0),-1), coalesce(max(x+0),-1) FROM
        (SELECT * FROM t1 UNION SELECT NULL as 'x', NULL as 'y')
    


      SELECT y, coalesce(sum(x),0) FROM
        (SELECT null AS x, y+1 AS y FROM t1 UNION SELECT * FROM t1)
      GROUP BY y ORDER BY y;
    


      SELECT y, count(x), count(*) FROM
        (SELECT null AS x, y+1 AS y FROM t1 UNION SELECT * FROM t1)
      GROUP BY y ORDER BY y;
    
