

  DROP TABLE IF EXISTS t1;
  DROP TABLE IF EXISTS t2;
  CREATE TABLE t1(a INTEGER PRIMARY KEY);
  INSERT INTO t1(a) VALUES(1),(2),(3);
  CREATE TABLE t2(x INTEGER PRIMARY KEY, y INT);
  INSERT INTO t2(y) VALUES(2),(3);
  SELECT * FROM t1, t2 WHERE a=y AND y=3;

