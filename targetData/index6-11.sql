

  CREATE TABLE t11(a,b,c);
  CREATE INDEX t11x ON t11(a) WHERE b<>99;
  EXPLAIN QUERY PLAN SELECT a FROM t11 WHERE b<>99;



  EXPLAIN QUERY PLAN SELECT a FROM t11 WHERE b<>99 AND c<>98;

