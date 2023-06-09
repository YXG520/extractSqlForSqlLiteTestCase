

  CREATE TABLE t1(a TEXT, b INT, c INT, d INT);
  CREATE INDEX t1abc ON t1(a,b,c);
  INSERT INTO t1 VALUES('abc',123,4,5);
  INSERT INTO t1 VALUES('abc',234,5,6);
  INSERT INTO t1 VALUES('abc',234,6,7);
  INSERT INTO t1 VALUES('abc',345,7,8);
  INSERT INTO t1 VALUES('def',567,8,9);
  INSERT INTO t1 VALUES('def',345,9,10);
  INSERT INTO t1 VALUES('bcd',100,6,11);

  /* Fake the sqlite_stat1 table so that the query planner believes
  ** the table contains thousands of rows and that the first few
  ** columns are not selective. */
  ANALYZE;
  DELETE FROM sqlite_stat1;
  INSERT INTO sqlite_stat1 VALUES('t1','t1abc','10000 5000 2000 10');
  ANALYZE sqlite_master;



  SELECT a,b,c,d,'|' FROM t1 WHERE b=345 ORDER BY a;



  EXPLAIN QUERY PLAN
  SELECT a,b,c,d,'|' FROM t1 WHERE d<>99 AND b=345 ORDER BY a;



  EXPLAIN QUERY PLAN
  SELECT a,b,c,d,'|' FROM t1 WHERE d<>99 AND b=345 ORDER BY a;



  SELECT a,b,c,d,'|' FROM t1 WHERE d<>99 AND b=345 ORDER BY a DESC;



  EXPLAIN QUERY PLAN
  SELECT a,b,c,d,'|' FROM t1 WHERE d<>99 AND b=345 ORDER BY a DESC;



  EXPLAIN QUERY PLAN
  SELECT a,b,c,d,'|' FROM t1 WHERE d<>99 AND b=345 ORDER BY a DESC;



  SELECT a,b,c,d,'|' FROM t1 WHERE c=6 ORDER BY a, b, c;



  EXPLAIN QUERY PLAN
  SELECT a,b,c,d,'|' FROM t1 WHERE c=6 ORDER BY a, b, c;



  EXPLAIN QUERY PLAN
  SELECT a,b,c,d,'|' FROM t1 WHERE c=6 ORDER BY a, b, c;



  SELECT a,b,c,d,'|' FROM t1 WHERE c IN (6,7) ORDER BY a, b, c;



  EXPLAIN QUERY PLAN
  SELECT a,b,c,d,'|' FROM t1 WHERE c IN (6,7) ORDER BY a, b, c;



  EXPLAIN QUERY PLAN
  SELECT a,b,c,d,'|' FROM t1 WHERE c IN (6,7) ORDER BY a, b, c;



  SELECT a,b,c,d,'|' FROM t1 WHERE c BETWEEN 6 AND 7 ORDER BY a, b, c;



  EXPLAIN QUERY PLAN
  SELECT a,b,c,d,'|' FROM t1 WHERE c BETWEEN 6 AND 7 ORDER BY a, b, c;



  EXPLAIN QUERY PLAN
  SELECT a,b,c,d,'|' FROM t1 WHERE c BETWEEN 6 AND 7 ORDER BY a, b, c;



  SELECT a,b,c,d,'|' FROM t1 WHERE b IN (234, 345) AND c BETWEEN 6 AND 7
   ORDER BY a, b;



  EXPLAIN QUERY PLAN
  SELECT a,b,c,d,'|' FROM t1 WHERE b IN (234, 345) AND c BETWEEN 6 AND 7
   ORDER BY a, b;



  EXPLAIN QUERY PLAN
  SELECT a,b,c,d,'|' FROM t1 WHERE b IN (234, 345) AND c BETWEEN 6 AND 7
   ORDER BY a, b;



  CREATE TABLE t1j(x TEXT, y INTEGER);
  INSERT INTO t1j VALUES('one',1),('six',6),('ninty-nine',99);
  INSERT INTO sqlite_stat1 VALUES('t1j',null,'3');
  ANALYZE sqlite_master;
  SELECT x, a, b, c, d, '|' FROM t1j, t1 WHERE c=y ORDER BY +a;



  EXPLAIN QUERY PLAN
  SELECT x, a, b, c, d, '|' FROM t1j, t1 WHERE c=y ORDER BY +a;



  SELECT x, a, b, c, d, '|' FROM t1j LEFT JOIN t1 ON c=y ORDER BY +y, +a;



  EXPLAIN QUERY PLAN
  SELECT x, a, b, c, d, '|' FROM t1j LEFT JOIN t1 ON c=y ORDER BY +y, +a;

