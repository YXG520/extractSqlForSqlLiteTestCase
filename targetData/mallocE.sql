SELECT p, q FROM (SELECT a+b AS p, b+c AS q FROM t1, t2 WHERE c>5)
              LEFT JOIN t2 ON p=x;

SELECT x, y2 FROM (SELECT a+b AS x, b+c AS y2 FROM t1, t2 WHERE c>5)
              LEFT JOIN t2 USING(x) WHERE y2>11;

