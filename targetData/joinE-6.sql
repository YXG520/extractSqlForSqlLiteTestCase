

  SELECT a, b
  FROM t1 LEFT JOIN t2 ON true
  ORDER BY coalesce(a,b,3);

