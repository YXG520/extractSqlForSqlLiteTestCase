

  CREATE TABLE t0(c0);
  CREATE TABLE t1(c1);
  INSERT INTO t1(c1) VALUES (0);
  SELECT (c0, x'') != (NULL, 0) FROM t1 LEFT JOIN t0;



  SELECT 2 FROM t1 LEFT JOIN t0 ON (c0, x'') != (NULL, 0);



  SELECT 21 FROM t0 RIGHT JOIN t1 ON (c0, x'') != (NULL, 0);



  SELECT 3 FROM t1 LEFT JOIN t0 WHERE (c0, x'') != (NULL, 0);



  SELECT 31 FROM t0 RIGHT JOIN t1 WHERE (c0, x'') != (NULL, 0);

