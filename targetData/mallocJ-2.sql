

  CREATE TABLE t1(a,b);
  INSERT INTO t1 VALUES(1,2);
  PRAGMA vdbe_trace=ON;


  SELECT a, b, 'abc' FROM t1
    UNION
    SELECT b, a, 'xyz' FROM t1
    ORDER BY 2, 3;

