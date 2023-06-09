

  CREATE TABLE t1(a ,b FLOAT);
  CREATE INDEX t1x1 ON t1(a,b,a,a,a,a,a,a,a,a,a,b);



  SELECT a FROM t1 NATURAL JOIN t1 WHERE (a,b)> (SELECT 2 IN (SELECT 2,2), 2);

