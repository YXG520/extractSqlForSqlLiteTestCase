

  CREATE TABLE t1(a INT PRIMARY KEY, b, c, d, e);
  CREATE TABLE t2(a INT PRIMARY KEY, f, g, h, i);
  CREATE TABLE t3(a INT PRIMARY KEY, j, k, l, m);
  CREATE VIEW v4 AS SELECT * FROM t2 UNION ALL SELECT * FROM t3;


S
Q

S
Q
