

  CREATE TABLE t4(x);
  INSERT INTO t4 VALUES('right'),('wrong');
  SELECT DISTINCT x
   FROM (SELECT x FROM t4 GROUP BY x)
   WHERE x='right'
   ORDER BY x;

