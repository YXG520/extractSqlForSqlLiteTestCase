

  SELECT *
  FROM t1 INNER JOIN t2 ON true
  LEFT JOIN t3 ON t2.y IS NOT NULL
  LEFT JOIN t4 ON true
  ORDER BY coalesce(t1.x,t2.y,t3.z,t4.w,0);

