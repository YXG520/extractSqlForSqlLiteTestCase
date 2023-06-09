

  DELETE FROM sqlite_stat1;
  INSERT INTO sqlite_stat1(tbl,idx,stat)
    VALUES('t1','t1ab','12345 3 2 x=5 sz=10 y=10'),
          ('t1','t1ca','12345 3 2 whatever sz=20 junk');
  ANALYZE sqlite_master;
  SELECT count(a) FROM t1;



  EXPLAIN QUERY PLAN
  SELECT count(a) FROM t1;



  DELETE FROM sqlite_stat1;
  INSERT INTO sqlite_stat1(tbl,idx,stat)
    VALUES('t1','t1ca','12345 3 2 x=5 sz=10 y=10'),
          ('t1','t1ab','12345 3 2 whatever sz=20 junk');
  ANALYZE sqlite_master;
  SELECT count(a) FROM t1;



  EXPLAIN QUERY PLAN
  SELECT count(a) FROM t1;

