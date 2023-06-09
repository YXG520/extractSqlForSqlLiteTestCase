

  CREATE TABLE t1(a REAL);
  INSERT INTO t1(a) VALUES(123);
  CREATE INDEX t1x1 ON t1(likely(a));
  SELECT typeof(likely(a)) FROM t1 NOT INDEXED;
  SELECT typeof(likely(a)) FROM t1 INDEXED BY t1x1;



  CREATE INDEX t1x2 ON t1(abs(a));
  SELECT typeof(abs(a)) FROM t1 NOT INDEXED;
  SELECT typeof(abs(a)) FROM t1 INDEXED BY t1x2;

