

  CREATE TABLE t0(a);
  CREATE TABLE t1(b);
  UPDATE t1 SET b=sum(a) FROM t0;
  SELECT * FROM t0, t1;

