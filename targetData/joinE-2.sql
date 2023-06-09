

  SELECT a, b
  FROM t1 INNER JOIN t2 ON true WHERE a IS NULL
  ORDER BY coalesce(a,b,3);



#   SELECT a, b
#   FROM t1 FULL JOIN t2 ON b IS NULL
#   ORDER BY coalesce(a,b,3);
# 

  DELETE FROM t1;
  INSERT INTO t1 VALUES(1);
  DELETE FROM t2;
  INSERT INTO t2 VALUES(NULL);



  SELECT a, b
  FROM t1 INNER JOIN t2 ON true
  ORDER BY coalesce(a,b,3);



  SELECT a, b
  FROM t1 INNER JOIN t2 ON true WHERE a IS NULL
  ORDER BY coalesce(a,b,3);



  SELECT a, b
  FROM t1 INNER JOIN t2 ON a IS NULL
  ORDER BY coalesce(a,b,3);



  SELECT a, b
  FROM t1 INNER JOIN t2 ON true WHERE b IS NULL
  ORDER BY coalesce(a,b,3);



  SELECT a, b
  FROM t1 INNER JOIN t2 ON b IS NULL
  ORDER BY coalesce(a,b,3);



  SELECT a, b
  FROM t1 LEFT JOIN t2 ON true
  ORDER BY coalesce(a,b,3);



  SELECT a, b
  FROM t1 LEFT JOIN t2 ON true WHERE a IS NULL
  ORDER BY coalesce(a,b,3);



  SELECT a, b
  FROM t1 LEFT JOIN t2 ON a IS NULL
  ORDER BY coalesce(a,b,3);



  SELECT a, b
  FROM t1 LEFT JOIN t2 ON true WHERE b IS NULL
  ORDER BY coalesce(a,b,3);

