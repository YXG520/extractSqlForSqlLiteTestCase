

  CREATE TABLE t0(a PRIMARY KEY,b TEXT AS ('2') UNIQUE);
  INSERT INTO t0(a) VALUES(2);
  SELECT * FROM t0 AS x JOIN t0 AS y
   WHERE x.b='2'
     AND (y.a=2 OR (x.b LIKE '2*' AND y.a=x.b));

SELECT typeof(b) FROM t1
