

  CREATE TABLE t0(c0 REAL AS(1) UNIQUE, c1 INT);
  INSERT INTO t0 VALUES('');
  SELECT quote(c0), quote(c1) from t0;



  SELECT *, (1 BETWEEN CAST(t0.c0 AS TEXT) AND t0.c0) FROM t0;



  SELECT * FROM t0 WHERE (1 BETWEEN CAST(t0.c0 AS TEXT) AND t0.c0);



  CREATE TABLE t1(a TEXT AS(b) COLLATE nocase, b TEXT, c INT, d DEFAULT 1);
  INSERT INTO t1(b,c) VALUES('abc',11),('DEF',22),('ghi',33);
  SELECT a FROM t1 WHERE b='DEF' AND a='def';



  CREATE INDEX t1bca ON t1(b,c,a);
  SELECT a FROM t1 WHERE b='DEF' AND a='def';

