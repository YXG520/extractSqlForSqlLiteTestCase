

  DROP TABLE IF EXISTS t4;
  CREATE TABLE t4(a,b,c,d,e,f,g,h,i);
  CREATE INDEX t4all ON t4(a,b,c<d,e,f,i,h);
  INSERT INTO t4 VALUES(1,2,3,4,5,6,7,8,9);
  ANALYZE;
  DELETE FROM sqlite_stat1;
  INSERT INTO sqlite_stat1
    VALUES('t4','t4all','600000 160000 40000 10000 2000 600 100 40 10');
  ANALYZE sqlite_master;
  SELECT i FROM t4 WHERE e=5;

