

  WITH c1(x) AS (VALUES(0) UNION ALL SELECT 100+x FROM c1 WHERE x<100 UNION ALL SELECT 1+x FROM c1 WHERE x<1)
  SELECT x, y, '|'
    FROM c1 AS x1, (SELECT x+1 AS y FROM c1 WHERE x<1 UNION ALL SELECT 1+x FROM c1 WHERE 1<x) AS x2
   ORDER BY x, y;
