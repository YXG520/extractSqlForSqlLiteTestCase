

  CREATE TABLE t1(a,b,c,d);
  CREATE VIEW v1 AS SELECT a*b, c*d FROM t1 ORDER BY b-d;


  SELECT * FROM v1

