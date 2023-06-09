

  CREATE TABLE t4(a,b,c,d,e,f,g,h,i);
  CREATE INDEX t4all ON t4(a,b,c,d,e,f,g,h);
  INSERT INTO t4 VALUES(1,2,3,4,5,6,7,8,9);
  ANALYZE;
  DELETE FROM sqlite_stat1;
  INSERT INTO sqlite_stat1 
    VALUES('t4','t4all','655360 163840 40960 10240 2560 640 160 40 10');
  ANALYZE sqlite_master;
  SELECT i FROM t4 WHERE a=1;
  SELECT i FROM t4 WHERE b=2;
  SELECT i FROM t4 WHERE c=3;
  SELECT i FROM t4 WHERE d=4;
  SELECT i FROM t4 WHERE e=5;
  SELECT i FROM t4 WHERE f=6;
  SELECT i FROM t4 WHERE g=7;
  SELECT i FROM t4 WHERE h=8;



  CREATE TABLE t1(a,b INT);
  INSERT INTO t1(a,b) VALUES(1,2),(3,3),(4,5);
  CREATE UNIQUE INDEX i1 ON t1(b,b,a,a,a,a,a,b,a);
  ANALYZE;
  DROP TABLE IF EXISTS sqlite_stat4;
  INSERT INTO sqlite_stat1 VALUES('t1','i1','30 30 30 2 2 2 2 2 2 2');
  ANALYZE sqlite_master;

  SELECT DISTINCT a
    FROM t1
   WHERE a = b
     AND a = 3
     AND b IN (1,3,2,4)
     AND b >= 0
     AND a <= 10;

