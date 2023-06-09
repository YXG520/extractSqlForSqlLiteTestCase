

  CREATE TABLE t2(a, b);
  CREATE INDEX i2 ON t2(a, b);
  BEGIN;


 INSERT INTO t2 VALUES($a, $b) 


  SELECT count(*) FROM t2 GROUP BY a;



  ANALYZE;
  SELECT lindex(nEq, 0) FROM sqlite_stat4;



  DROP TABLE IF EXISTS t1;
  CREATE TABLE t1(a INTEGER PRIMARY KEY, b, c);
  INSERT INTO t1 VALUES(1, 1, 'one-a');
  INSERT INTO t1 VALUES(11, 1, 'one-b');
  INSERT INTO t1 VALUES(21, 1, 'one-c');
  INSERT INTO t1 VALUES(31, 1, 'one-d');
  INSERT INTO t1 VALUES(41, 1, 'one-e');
  INSERT INTO t1 VALUES(51, 1, 'one-f');
  INSERT INTO t1 VALUES(61, 1, 'one-g');
  INSERT INTO t1 VALUES(71, 1, 'one-h');
  INSERT INTO t1 VALUES(81, 1, 'one-i');
  INSERT INTO t1 VALUES(91, 1, 'one-j');
  INSERT INTO t1 SELECT a+1,2,'two' || substr(c,4) FROM t1;
  INSERT INTO t1 SELECT a+2,3,'three'||substr(c,4) FROM t1 WHERE c GLOB 'one-*';
  INSERT INTO t1 SELECT a+3,4,'four'||substr(c,4) FROM t1 WHERE c GLOB 'one-*';
  INSERT INTO t1 SELECT a+4,5,'five'||substr(c,4) FROM t1 WHERE c GLOB 'one-*';
  INSERT INTO t1 SELECT a+5,6,'six'||substr(c,4) FROM t1 WHERE c GLOB 'one-*';	
  CREATE INDEX t1b ON t1(b);
  ANALYZE;
  SELECT c FROM t1 WHERE b=3 AND a BETWEEN 30 AND 60;

