
 
  CREATE TABLE t01(x, y);
  CREATE TABLE t02(x, y);



  SELECT * FROM (
    SELECT * FROM t01 UNION SELECT x FROM t02
  ) WHERE y=1



  CREATE VIEW v0 as SELECT x, y FROM t01 UNION SELECT x FROM t02;
  EXPLAIN QUERY PLAN SELECT * FROM v0 WHERE x='0' OR y;

