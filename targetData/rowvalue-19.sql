

  DROP TABLE IF EXISTS t1;
  CREATE TABLE t1(a INTEGER PRIMARY KEY,b);
  INSERT INTO t1(a,b) VALUES(1,11),(2,22),(3,33),(4,44);
  SELECT * FROM t1 WHERE (a,b)>(0,0) ORDER BY a;



  SELECT * FROM t1 WHERE (a,b)>=(0,0) ORDER BY a;



  SELECT * FROM t1 WHERE (a,b)<(5,0) ORDER BY a DESC;



  SELECT * FROM t1 WHERE (a,b)<=(5,0) ORDER BY a DESC;



  SELECT * FROM t1 WHERE (a,b)>(3,0) ORDER BY a;



  SELECT * FROM t1 WHERE (a,b)>=(3,0) ORDER BY a;



  SELECT * FROM t1 WHERE (a,b)<(3,0) ORDER BY a DESC;



  SELECT * FROM t1 WHERE (a,b)<=(3,0) ORDER BY a DESC;



  SELECT * FROM t1 WHERE (a,b)>(3,32) ORDER BY a;



  SELECT * FROM t1 WHERE (a,b)>(3,33) ORDER BY a;



  SELECT * FROM t1 WHERE (a,b)>=(3,33) ORDER BY a;



  SELECT * FROM t1 WHERE (a,b)>=(3,34) ORDER BY a;



  SELECT * FROM t1 WHERE (a,b)<(3,34) ORDER BY a DESC;



  SELECT * FROM t1 WHERE (a,b)<(3,33) ORDER BY a DESC;



  SELECT * FROM t1 WHERE (a,b)<=(3,33) ORDER BY a DESC;



  SELECT * FROM t1 WHERE (a,b)<=(3,32) ORDER BY a DESC;



  SELECT * FROM t1 WHERE (0,0)<(a,b) ORDER BY a;



  SELECT * FROM t1 WHERE (0,0)<=(a,b) ORDER BY a;



  SELECT * FROM t1 WHERE (5,0)>(a,b) ORDER BY a DESC;



  SELECT * FROM t1 WHERE (5,0)>=(a,b) ORDER BY a DESC;



  SELECT * FROM t1 WHERE (3,0)<(a,b) ORDER BY a;



  SELECT * FROM t1 WHERE (3,0)<=(a,b) ORDER BY a;



  SELECT * FROM t1 WHERE (3,0)>(a,b) ORDER BY a DESC;



  SELECT * FROM t1 WHERE (3,0)>=(a,b) ORDER BY a DESC;



  SELECT * FROM t1 WHERE (3,32)<(a,b) ORDER BY a;



  SELECT * FROM t1 WHERE (3,33)<(a,b) ORDER BY a;



  SELECT * FROM t1 WHERE (3,33)<=(a,b) ORDER BY a;



  SELECT * FROM t1 WHERE (3,34)<=(a,b) ORDER BY a;



  SELECT * FROM t1 WHERE (3,34)>(a,b) ORDER BY a DESC;



  SELECT * FROM t1 WHERE (3,33)>(a,b) ORDER BY a DESC;



  SELECT * FROM t1 WHERE (3,33)>=(a,b) ORDER BY a DESC;



  SELECT * FROM t1 WHERE (3,32)>=(a,b) ORDER BY a DESC;

