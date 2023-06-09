

  CREATE TABLE t1(a PRIMARY KEY, x);
  CREATE TABLE t2(b INT);
  CREATE INDEX t1aa ON t1(a, a);

  INSERT INTO t1 VALUES('abc', 'def');
  INSERT INTO t2 VALUES(1);



  SELECT * FROM t2 JOIN t1 WHERE a='abc' AND x='def';



  SELECT * FROM t2 JOIN t1 WHERE a='abc' AND x='abc';



  SELECT * FROM t2 LEFT JOIN t1 ON a=0 WHERE (x='x' OR x IS NULL);

