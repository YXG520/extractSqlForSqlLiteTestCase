

  DROP TABLE IF EXISTS t1;
  CREATE TABLE t1(a INTEGER PRIMARY KEY, b, c);
  INSERT INTO t1 VALUES(1,1,'0000');
  CREATE INDEX t0b ON t1(b);
  ANALYZE;
  SELECT c FROM t1 WHERE b=3 AND a BETWEEN 30 AND hex(1);



  CREATE TABLE t1(a,b,c);
  CREATE INDEX t1a ON t1(a);
  ANALYZE;
  SELECT * FROM sqlite_stat1;
  INSERT INTO sqlite_stat1(tbl,idx,stat) VALUES('t1','t1a','12000');
  INSERT INTO sqlite_stat1(tbl,idx,stat) VALUES('t1','t1a','12000');
  ANALYZE sqlite_master;

