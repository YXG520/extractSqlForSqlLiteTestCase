

  CREATE TABLE t1(a,b,c,d,e,f,g,h varchar(300));
  CREATE INDEX t1ab ON t1(a,b);
  ANALYZE sqlite_master;
  -- Only two distinct values for the skip-scan column.  Skip-scan is not used.
  INSERT INTO sqlite_stat1 VALUES('t1','t1ab','500000 250000 125000');
  ANALYZE sqlite_master;
  EXPLAIN QUERY PLAN SELECT * FROM t1 WHERE b=1;



  -- Four distinct values for the skip-scan column.  Skip-scan is used.
  UPDATE sqlite_stat1 SET stat='500000 250000 62500';
  ANALYZE sqlite_master;
  EXPLAIN QUERY PLAN SELECT * FROM t1 WHERE b=1;



  -- Two distinct values for the skip-scan column again.  Skip-scan is not used.
  UPDATE sqlite_stat1 SET stat='500000 125000 62500';
  ANALYZE sqlite_master;
  EXPLAIN QUERY PLAN SELECT * FROM t1 WHERE b=1;

noskipscan
