

  CREATE TABLE t0(a, b);
  CREATE INDEX t0a ON t0(a);
  INSERT INTO t0 VALUES(10,10),(10,11),(10,12);
  SELECT DISTINCT c FROM t0 LEFT JOIN (SELECT a+1 AS c FROM t0) ORDER BY c ;

