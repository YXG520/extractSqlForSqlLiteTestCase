

  CREATE TABLE t1(a INTEGER PRIMARY KEY, b INT, c INT);
  CREATE TABLE t2(d INTEGER PRIMARY KEY, e INT);
  CREATE VIEW t3(a,b,c,d,e) AS SELECT * FROM t1 LEFT JOIN t2 ON d=c;
  CREATE TABLE t4(x INT, y INT);
  INSERT INTO t1 VALUES(1,2,3);
  INSERT INTO t2 VALUES(1,5);
  INSERT INTO t4 VALUES(1,4);
  SELECT a, b, y FROM t4 JOIN t3 ON a=x;


S
Q
