

  DROP TABLE t1;
  DROP TABLE t2;
  CREATE TABLE t1(a, b, c);
  CREATE TABLE t2(d, e, f);

  CREATE UNIQUE INDEX i1 ON t1(a);
  CREATE UNIQUE INDEX i2 ON t1(b);
  CREATE UNIQUE INDEX i3 ON t2(d);


  1 "SELECT * FROM t1,           t2 WHERE t1.a>? AND t2.d>t1.c AND t1.b=t2.e"
  2 "SELECT * FROM t2,           t1 WHERE t1.a>? AND t2.d>t1.c AND t1.b=t2.e"
  3 "SELECT * FROM t2 CROSS JOIN t1 WHERE t1.a>? AND t2.d>t1.c AND t1.b=t2.e"


