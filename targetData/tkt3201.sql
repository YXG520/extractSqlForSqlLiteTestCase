CREATE TABLE t1(a INTEGER PRIMARY KEY, b TEXT);
    INSERT INTO t1 VALUES(1, 'one');
    INSERT INTO t1 VALUES(2, 'two');
  
SELECT l.a, r.a FROM t1 AS l, t1 AS r WHERE l.a < r.a;
  
CREATE TABLE t2(a INTEGER PRIMARY KEY, b TEXT);
    INSERT INTO t2 VALUES(2, 'two');
  
SELECT l.a, r.a FROM t1 AS l, t2 AS r WHERE l.a < r.a;
  
DELETE FROM t1 WHERE a = 2;
  
SELECT l.a, r.a FROM t1 AS l, t2 AS r WHERE l.a < r.a;
  
DELETE FROM t1 WHERE a = 2;
  
SELECT t1.a, t1.b, t2.a, t2.b FROM t1, t2;
  
CREATE TABLE t3(c INTEGER PRIMARY KEY, d TEXT);
    INSERT INTO t3 VALUES(2, 'two');
  
SELECT a, b, c, d FROM t1, t3 
SELECT a, b, c, d FROM t1, t3 WHERE a < c 