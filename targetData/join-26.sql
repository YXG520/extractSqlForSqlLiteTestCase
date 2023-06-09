

  CREATE TABLE t4(a,b);
  CREATE TABLE t5(a,c);
  CREATE TABLE t6(a,d);
  SELECT * FROM t5 JOIN ((t4 JOIN (t5 JOIN t6)) t7);

