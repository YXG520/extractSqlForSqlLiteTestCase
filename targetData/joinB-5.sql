

  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1
  INNER JOIN t2 USING(a)
  INNER JOIN t3 USING(a)
  INNER JOIN t4 USING(a)
  RIGHT JOIN t5 USING(a)
  ORDER BY 1 NULLS FIRST;



  SELECT a, c, d, e, f, g
  FROM t1
  INNER JOIN t2 USING(a,b)
  LEFT JOIN t3 USING(a,b)
  RIGHT JOIN t4 USING(a,b)
  INNER JOIN t5 USING(a,b)
  WHERE a<>13
  ORDER BY 1 NULLS FIRST;



  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1
  INNER JOIN t2 USING(a)
  LEFT JOIN t3 USING(a)
  RIGHT JOIN t4 USING(a)
  LEFT JOIN t5 USING(a)
  ORDER BY 1 NULLS FIRST;



  SELECT a, c, d, e, f, g
  FROM t1
  INNER JOIN (t2 LEFT JOIN t3 USING(a)) USING(a)
  RIGHT JOIN (t4 LEFT JOIN t5 USING(a)) USING(a)
  WHERE a<=18
  ORDER BY 1 NULLS FIRST;



  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1
  INNER JOIN t2 USING(a)
  LEFT JOIN t3 USING(a)
  RIGHT JOIN t4 USING(a)
  RIGHT JOIN t5 USING(a)
  ORDER BY 1 NULLS FIRST;



  SELECT a, b, c, d, e, f, g
  FROM t1
  INNER JOIN t2 USING(a,b)
  LEFT JOIN t3 USING(a,b)
  RIGHT JOIN t4 USING(a,b)
  RIGHT JOIN t5 USING(a,b)
  WHERE d<>33 OR d IS NULL
  ORDER BY 1 NULLS FIRST;



  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1
  INNER JOIN t2 USING(a)
  LEFT JOIN t3 USING(a)
  RIGHT JOIN t4 USING(a)
  FULL JOIN t5 USING(a)
  ORDER BY 1 NULLS FIRST;



  SELECT b, c, d, e, f, g
  FROM t1
  NATURAL INNER JOIN t2
  NATURAL LEFT JOIN t3
  NATURAL RIGHT JOIN t4
  NATURAL FULL JOIN t5
  WHERE b BETWEEN 12 AND 17
  ORDER BY 1 NULLS FIRST;



  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1
  INNER JOIN t2 USING(a)
  LEFT JOIN t3 USING(a)
  FULL JOIN t4 USING(a)
  INNER JOIN t5 USING(a)
  ORDER BY 1 NULLS FIRST;



  SELECT a, c, d, e, f, g
  FROM t1
  INNER JOIN t2 USING(a,b)
  LEFT JOIN t3 USING(a,b)
  FULL JOIN t4 USING(a,b)
  INNER JOIN t5 USING(a,b)
  WHERE a<>13
  ORDER BY 1 NULLS FIRST;



  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1
  INNER JOIN t2 USING(a)
  LEFT JOIN t3 USING(a)
  FULL JOIN t4 USING(a)
  LEFT JOIN t5 USING(a)
  ORDER BY 1 NULLS FIRST;



  SELECT a, c, d, e, f, g
  FROM t1
  FULL JOIN (t2 FULL JOIN t3 USING(a)) USING(a)
  RIGHT JOIN (t4 LEFT JOIN t5 USING(a)) USING(a)
  WHERE a<=18
  ORDER BY 1 NULLS FIRST;



  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1
  FULL JOIN t2 USING(a)
  FULL JOIN t3 USING(a)
  RIGHT JOIN t4 USING(a)
  RIGHT JOIN t5 USING(a)
  ORDER BY 1 NULLS FIRST;



  SELECT a, b, c, d, e, f, g
  FROM t1
  FULL JOIN t2 USING(a,b)
  FULL JOIN t3 USING(a,b)
  RIGHT JOIN t4 USING(a,b)
  RIGHT JOIN t5 USING(a,b)
  WHERE d<>33 OR d IS NULL
  ORDER BY 1 NULLS FIRST;



  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1
  FULL JOIN t2 USING(a)
  FULL JOIN t3 USING(a)
  RIGHT JOIN t4 USING(a)
  FULL JOIN t5 USING(a)
  ORDER BY 1 NULLS FIRST;



  SELECT b, c, d, e, f, g
  FROM t1
  NATURAL FULL JOIN t2
  NATURAL FULL JOIN t3
  NATURAL RIGHT JOIN t4
  NATURAL FULL JOIN t5
  WHERE b BETWEEN 12 AND 17
  ORDER BY 1 NULLS FIRST;



  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1
  FULL JOIN t2 USING(a)
  FULL JOIN t3 USING(a)
  FULL JOIN t4 USING(a)
  INNER JOIN t5 USING(a)
  ORDER BY 1 NULLS FIRST;



  SELECT a, c, d, e, f, g
  FROM t1
  FULL JOIN t2 USING(a,b)
  FULL JOIN t3 USING(a,b)
  FULL JOIN t4 USING(a,b)
  INNER JOIN t5 USING(a,b)
  WHERE a<>13
  ORDER BY 1 NULLS FIRST;



  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1
  FULL JOIN t2 USING(a)
  FULL JOIN t3 USING(a)
  FULL JOIN t4 USING(a)
  LEFT JOIN t5 USING(a)
  ORDER BY 1 NULLS FIRST;



  SELECT a, c, d, e, f, g
  FROM t1
  FULL JOIN (t2 FULL JOIN t3 USING(a)) USING(a)
  FULL JOIN (t4 LEFT JOIN t5 USING(a)) USING(a)
  WHERE a<=18
  ORDER BY 1 NULLS FIRST;



  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1
  FULL JOIN t2 USING(a)
  FULL JOIN t3 USING(a)
  FULL JOIN t4 USING(a)
  RIGHT JOIN t5 USING(a)
  ORDER BY 1 NULLS FIRST;



  SELECT a, b, c, d, e, f, g
  FROM t1
  FULL JOIN t2 USING(a,b)
  FULL JOIN t3 USING(a,b)
  FULL JOIN t4 USING(a,b)
  RIGHT JOIN t5 USING(a,b)
  WHERE d<>33 OR d IS NULL
  ORDER BY 1 NULLS FIRST;



  SELECT a, t1.a, t2.a, t3.a, t4.a, t5.a
  FROM t1
  FULL JOIN t2 USING(a)
  FULL JOIN t3 USING(a)
  FULL JOIN t4 USING(a)
  FULL JOIN t5 USING(a)
  ORDER BY 1 NULLS FIRST;



  SELECT b, c, d, e, f, g
  FROM t1
  NATURAL FULL JOIN t2
  NATURAL FULL JOIN t3
  NATURAL FULL JOIN t4
  NATURAL FULL JOIN t5
  WHERE b BETWEEN 12 AND 17
  ORDER BY 1 NULLS FIRST;

