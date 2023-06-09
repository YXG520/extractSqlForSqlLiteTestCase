

  CREATE TABLE t1(a INTEGER PRIMARY KEY, b TEXT, c TEXT, d REAL);
  INSERT INTO t1 VALUES(1,'A','aa',2.5);
  SELECT * FROM t1 AS t2 NATURAL RIGHT JOIN t1 AS t3
   WHERE (a,b) IN (SELECT rowid, b FROM t1);



  DROP TABLE IF EXISTS t1;
  CREATE TABLE t1(a INT PRIMARY KEY, b TEXT, c TEXT, d INT) WITHOUT ROWID;
  INSERT INTO t1 VALUES(15,'xray','baker',42);
  SELECT value, t1.* FROM json_each('7') NATURAL RIGHT JOIN t1
   WHERE (a,b) IN (SELECT a, b FROM t1);



  DROP TABLE IF EXISTS t1;
  CREATE TABLE t1(a INTEGER PRIMARY KEY,b);
  INSERT INTO t1 VALUES(0,NULL),(1,2);
  SELECT value, t1.* FROM json_each('17') NATURAL RIGHT JOIN t1
   WHERE (a,b) IN (SELECT rowid, b FROM t1);



  SELECT value, t1.* FROM json_each('null') NATURAL RIGHT JOIN t1
   WHERE (a,b) IN (SELECT rowid, b FROM t1);



  CREATE TABLE a(key TEXT);
  INSERT INTO a(key) VALUES('a'),('b');
  SELECT quote(a.key), b.value
    FROM a RIGHT JOIN json_each('["a","c"]') AS b ON a.key=b.value;

