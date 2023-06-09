

  UPDATE sqlite_stat1 SET stat='500000 125000 1 sz=100';
  ANALYZE sqlite_master;
  EXPLAIN QUERY PLAN SELECT * FROM t1 WHERE b=1;



  UPDATE sqlite_stat1 SET stat='500000 125000 1 noskipscan sz=100';
  ANALYZE sqlite_master;
  EXPLAIN QUERY PLAN SELECT * FROM t1 WHERE b=1;



  UPDATE sqlite_stat1 SET stat='500000 125000 1 sz=100 noskipscan';
  ANALYZE sqlite_master;
  EXPLAIN QUERY PLAN SELECT * FROM t1 WHERE b=1;

