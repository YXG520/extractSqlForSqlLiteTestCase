

  DROP TABLE IF EXISTS t1;
  CREATE TABLE t1(a,b,PRIMARY KEY(b,b));
  INSERT INTO t1 VALUES(1,2),(3,4),(5,6);
  SELECT * FROM t1 WHERE (a,b) IN (VALUES(1,2));  

