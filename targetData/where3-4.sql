

  CREATE TABLE t400(a INTEGER PRIMARY KEY, b, c);
  CREATE TABLE t401(p INTEGER PRIMARY KEY, q, r);
  CREATE TABLE t402(x INTEGER PRIMARY KEY, y, z);
  EXPLAIN QUERY PLAN
  SELECT * FROM t400, t401, t402 WHERE t402.z GLOB 'abc*';



  EXPLAIN QUERY PLAN
  SELECT * FROM t400, t401, t402 WHERE t401.r GLOB 'abc*';



  EXPLAIN QUERY PLAN
  SELECT * FROM t400, t401, t402 WHERE t400.c GLOB 'abc*';

