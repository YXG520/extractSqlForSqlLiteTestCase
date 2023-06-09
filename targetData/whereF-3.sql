

  DROP TABLE t1;
  DROP TABLE t2;
  CREATE TABLE t1(a, b, c);
  CREATE TABLE t2(d, e, f);

  CREATE UNIQUE INDEX i1 ON t1(a, b);
  CREATE INDEX i2 ON t2(d);


  1 {SELECT t1.a, t1.b, t2.d, t2.e FROM t1, t2 
     WHERE t2.d=t1.b AND t1.a=(t2.d+1) AND t1.b = (t2.e+1)

