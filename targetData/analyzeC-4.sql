

  DROP INDEX t1a;
  CREATE INDEX t1ab ON t1(a,b);
  CREATE INDEX t1ca ON t1(c,a);
  DELETE FROM sqlite_stat1;
  INSERT INTO sqlite_stat1(tbl,idx,stat)
    VALUES('t1','t1ab','12345 3 2 sz=10'),('t1','t1ca','12345 3 2 sz=20');
  ANALYZE sqlite_master;
  SELECT count(a) FROM t1;



  EXPLAIN QUERY PLAN
  SELECT count(a) FROM t1;



  DELETE FROM sqlite_stat1;
  INSERT INTO sqlite_stat1(tbl,idx,stat)
    VALUES('t1','t1ab','12345 3 2 sz=20'),('t1','t1ca','12345 3 2 sz=10');
  ANALYZE sqlite_master;
  SELECT count(a) FROM t1;



  EXPLAIN QUERY PLAN
  SELECT count(a) FROM t1;



  DROP TABLE IF EXISTS t44;
  CREATE TABLE t44(a PRIMARY KEY);
  INSERT INTO sqlite_stat1 VALUES('t44',null,'sz=0');
  ANALYZE sqlite_master;
  SELECT 0 FROM t44 WHERE a IN(1,2,3);

