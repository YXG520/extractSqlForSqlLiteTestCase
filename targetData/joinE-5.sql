

  SELECT a, b
  FROM t1 INNER JOIN t2 ON b IS NULL
  ORDER BY coalesce(a,b,3);

