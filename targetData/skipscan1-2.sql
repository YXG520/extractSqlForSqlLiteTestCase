

  CREATE TABLE t2(a TEXT, b INT, c INT, d INT,
                  PRIMARY KEY(a,b,c));
  INSERT INTO t2 SELECT * FROM t1;

  /* Fake the sqlite_stat1 table so that the query planner believes
  ** the table contains thousands of rows and that the first few
  ** columns are not selective. */
  ANALYZE;
  UPDATE sqlite_stat1 SET stat='10000 5000 2000 10' WHERE idx NOT NULL;
  ANALYZE sqlite_master;



  SELECT a,b,c,d,'|' FROM t2 WHERE d<>99 AND b=345 ORDER BY a;



  EXPLAIN QUERY PLAN
  SELECT a,b,c,d,'|' FROM t2 WHERE d<>99 AND b=345 ORDER BY a;



  EXPLAIN QUERY PLAN
  SELECT a,b,c,d,'|' FROM t2 WHERE d<>99 AND b=345 ORDER BY a;



  CREATE TABLE t6(a TEXT, b INT, c INT, d INT);
  CREATE INDEX t6abc ON t6(a,b,c);
  INSERT INTO t6 VALUES('abc',123,4,5);

  ANALYZE;
  DELETE FROM sqlite_stat1;
  INSERT INTO sqlite_stat1 VALUES('t6','t6abc','10000 5000 2000 10');
  ANALYZE sqlite_master;
  DELETE FROM t6;



  EXPLAIN QUERY PLAN
  SELECT a,b,c,d,'|' FROM t6 WHERE d<>99 AND b=345 ORDER BY a;



  SELECT a,b,c,d,'|' FROM t6 WHERE d<>99 AND b=345 ORDER BY a;



  EXPLAIN QUERY PLAN
  SELECT a,b,c,d,'|' FROM t6 WHERE d<>99 AND b=345 ORDER BY a DESC;



  SELECT a,b,c,d,'|' FROM t6 WHERE d<>99 AND b=345 ORDER BY a DESC;

