

  PRAGMA automatic_index = 0;
  CREATE TABLE t1(a, b, c);
  CREATE TABLE t2(d, e, f);
  CREATE UNIQUE INDEX i1 ON t1(a);
  CREATE UNIQUE INDEX i2 ON t2(d);


  1 "SELECT * FROM t1,           t2 WHERE t1.a=t2.e AND t2.d<t1.b AND t1.c!=10"
  2 "SELECT * FROM t2,           t1 WHERE t1.a=t2.e AND t2.d<t1.b AND t1.c!=10"
  3 "SELECT * FROM t2 CROSS JOIN t1 WHERE t1.a=t2.e AND t2.d<t1.b AND t1.c!=10"


