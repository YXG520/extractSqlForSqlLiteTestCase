

  SELECT a, b
  FROM t1 LEFT JOIN t2 ON a IS NULL
  ORDER BY coalesce(a,b,3);

