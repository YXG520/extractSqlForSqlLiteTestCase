

  DROP TABLE IF EXISTS t1;
  CREATE TABLE t1(x, y, PRIMARY KEY(x,y)) WITHOUT ROWID;
  INSERT INTO t1(x,y) VALUES(1,'AB');
  INSERT INTO t1(x,y) VALUES(2,'CD');
  ANALYZE;
  DROP TABLE IF EXISTS sqlite_stat4;
  DELETE FROM sqlite_stat1;
  INSERT INTO sqlite_stat1(tbl,idx,stat) VALUES('t1','t1','1000000 100 1');
  ANALYZE sqlite_master;
  SELECT * FROM t1
   WHERE (y = 'AB' AND x <= 4)
      OR (y = 'EF' AND x = 5);



  EXPLAIN QUERY PLAN
  SELECT * FROM t1
   WHERE (y = 'AB' AND x <= 4)
      OR (y = 'EF' AND x = 5);



  SELECT * FROM t1
   WHERE y = 'AB' OR (y = 'CD' AND x = 2)
  ORDER BY +x;

