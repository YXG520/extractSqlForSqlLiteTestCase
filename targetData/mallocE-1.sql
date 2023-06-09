
 
  SELECT p, q FROM (SELECT a+b AS p, b+c AS q FROM t1, t2 WHERE c>5)
              LEFT JOIN t2 ON p=x;

