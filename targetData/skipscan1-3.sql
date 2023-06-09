

  CREATE TABLE t3(a TEXT, b INT, c INT, d INT,
                  PRIMARY KEY(a,b,c)) WITHOUT ROWID;
  INSERT INTO t3 SELECT * FROM t1;

  /* Fake the sqlite_stat1 table so that the query planner believes
  ** the table contains thousands of rows and that the first few
  ** columns are not selective. */
  ANALYZE;
  UPDATE sqlite_stat1 SET stat='10000 5000 2000 10' WHERE idx NOT NULL;
  ANALYZE sqlite_master;



  SELECT a,b,c,d,'|' FROM t3 WHERE b=345 ORDER BY a;



  EXPLAIN QUERY PLAN
  SELECT a,b,c,d,'|' FROM t3 WHERE b=345 ORDER BY a;



  EXPLAIN QUERY PLAN
  SELECT a,b,c,d,'|' FROM t3 WHERE b=345 ORDER BY a;



  CREATE TABLE t1 (c1, c2, c3, c4, PRIMARY KEY(c4, c3));
  INSERT INTO t1 VALUES(3,0,1,NULL);
  INSERT INTO t1 VALUES(0,4,1,NULL);
  INSERT INTO t1 VALUES(5,6,1,NULL);
  INSERT INTO t1 VALUES(0,4,1,NULL);
  ANALYZE sqlite_master;
  INSERT INTO sqlite_stat1 VALUES('t1','sqlite_autoindex_t1_1','18 18 6');
  ANALYZE sqlite_master;
  SELECT DISTINCT quote(c1), quote(c2), quote(c3), quote(c4), '|'
    FROM t1 WHERE t1.c3 = 1;


S
Q
