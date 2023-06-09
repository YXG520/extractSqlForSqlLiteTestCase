

    SELECT x, y FROM t2 UNION SELECT a, b FROM t3 ORDER BY x LIMIT 1
  


    SELECT x, y FROM t2 UNION ALL SELECT a, b FROM t3 ORDER BY x LIMIT 1
  


    SELECT x, y FROM t2 EXCEPT SELECT a, b FROM t3 ORDER BY x LIMIT 1
  


    SELECT x, y FROM t2 INTERSECT SELECT 0 AS a, 1 AS b;
  


    SELECT 0 AS x, 1 AS y
    UNION
    SELECT 2 AS p, 3 AS q
    UNION
    SELECT 4 AS a, 5 AS b
    ORDER BY x LIMIT 1
  


    SELECT * FROM (
      SELECT 0 AS x, 1 AS y
      UNION
      SELECT 2 AS p, 3 AS q
      UNION
      SELECT 4 AS a, 5 AS b
    ) ORDER BY 1 LIMIT 1;
  


    SELECT * FROM (
      SELECT 0 AS x, 1 AS y
      UNION
      SELECT 2 AS p, 3 AS q
      UNION
      SELECT 4 AS a, 5 AS b
    ) ORDER BY x LIMIT 1;
  


    SELECT 0 AS x, 1 AS y
    UNION
    SELECT 2 AS y, -3 AS x
    ORDER BY x LIMIT 1;
  


    SELECT 1 AS a, 2 AS b UNION ALL SELECT 3 AS b, 4 AS a
  


    SELECT * FROM (SELECT 1 AS a, 2 AS b UNION ALL SELECT 3 AS b, 4 AS a)
     WHERE b=3
  


    SELECT * FROM (SELECT 1 AS a, 2 AS b UNION ALL SELECT 3 AS b, 4 AS a)
     WHERE b=2
  


    SELECT * FROM (SELECT 1 AS a, 2 AS b UNION ALL SELECT 3 AS e, 4 AS b)
     WHERE b=2
  


    SELECT * FROM (SELECT 1 AS a, 2 AS b UNION ALL SELECT 3 AS e, 4 AS b)
     WHERE b>0
  
