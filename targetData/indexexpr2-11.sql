

  CREATE TABLE t3 (a INT, b AS (-a));
  CREATE INDEX t3x ON t3(b, a);
  INSERT INTO t3(a) VALUES(44);
  SELECT * FROM t3 AS a0
   WHERE (SELECT sum(-a0.a=b) FROM t3 GROUP BY b)
   GROUP BY b;

