

  SELECT *
  FROM t1 INNER JOIN t2 ON true
  LEFT JOIN t3 ON t2.y IS NOT NULL
  INNER JOIN t4 ON true
  WHERE (t3.z!=400 AND t3.z!=500 AND t3.z!=600)
  ORDER BY coalesce(t1.x,t2.y,t3.z,t4.w,0);

