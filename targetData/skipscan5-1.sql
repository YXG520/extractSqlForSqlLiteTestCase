

  CREATE TABLE t1(a INT, b INT, c INT);
  CREATE INDEX i1 ON t1(a, b);


 INSERT INTO t1 VALUES($a, $b, NULL) 
EXPLAIN QUERY PLAN SELECT * FROM t1 WHERE $q
