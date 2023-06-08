BEGIN;
    CREATE TABLE t1(x, y);
    INSERT INTO t1 VALUES(1,1);
    INSERT INTO t1 VALUES(2,2);
    INSERT INTO t1 VALUES(3,2);
    INSERT INTO t1 VALUES(4,3);
    INSERT INTO t1 VALUES(5,3);
    INSERT INTO t1 VALUES(6,3);
    INSERT INTO t1 VALUES(7,3);
    INSERT INTO t1 VALUES(8,4);
    INSERT INTO t1 VALUES(9,4);
    INSERT INTO t1 VALUES(10,4);
    INSERT INTO t1 VALUES(11,4);
    INSERT INTO t1 VALUES(12,4);
    INSERT INTO t1 VALUES(13,4);
    INSERT INTO t1 VALUES(14,4);
    INSERT INTO t1 VALUES(15,4);
    INSERT INTO t1 VALUES(16,5);
    INSERT INTO t1 VALUES(17,5);
    INSERT INTO t1 VALUES(18,5);
    INSERT INTO t1 VALUES(19,5);
    INSERT INTO t1 VALUES(20,5);
    COMMIT;
    SELECT DISTINCT y FROM t1 ORDER BY y;
  
SELECT min(x) FROM t1
SELECT max(x) FROM t1
CREATE INDEX t1i1 ON t1(x DESC)
SELECT min(x) FROM t1
SELECT max(x) FROM t1
SELECT max(y) FROM t1
CREATE TABLE t2(a INTEGER PRIMARY KEY, b);
    INSERT INTO t2 SELECT * FROM t1;
  
SELECT min(a) FROM t2
SELECT max(a) FROM t2
INSERT INTO t2 VALUES((SELECT max(a) FROM t2)+1,999)
SELECT max(a) FROM t2
INSERT INTO t2 VALUES(max_a_t2()+1,999)
SELECT max(a) FROM t2
INSERT INTO t2 VALUES((SELECT max(a) FROM t2)+1,999)
SELECT max(a) FROM t2
INSERT INTO t2 VALUES(max_a_t2()+1,999)
SELECT b FROM t2 WHERE a=(SELECT max(a) FROM t2) 
SELECT b FROM t2 WHERE a=max_a_t2() 
SELECT coalesce(min(x+0),-1), coalesce(max(x+0),-1) FROM
        (SELECT * FROM t1 UNION SELECT NULL as 'x', NULL as 'y')
    
SELECT y, coalesce(sum(x),0) FROM
        (SELECT null AS x, y+1 AS y FROM t1 UNION SELECT * FROM t1)
      GROUP BY y ORDER BY y;
    
SELECT y, count(x), count(*) FROM
        (SELECT null AS x, y+1 AS y FROM t1 UNION SELECT * FROM t1)
      GROUP BY y ORDER BY y;
    
CREATE TABLE t3(x INTEGER UNIQUE NOT NULL);
    SELECT coalesce(min(x),999) FROM t3;
  
SELECT coalesce(min(rowid),999) FROM t3;
  
SELECT coalesce(max(x),999) FROM t3;
  
SELECT coalesce(max(rowid),999) FROM t3;
  
SELECT coalesce(max(rowid),999) FROM t3 WHERE rowid<25;
  
SELECT min(a) FROM t2 LIMIT 1
  
SELECT max(a) FROM t2 LIMIT 3
  
SELECT min(a) FROM t2 LIMIT 0,100
  
SELECT max(a) FROM t2 LIMIT 1,100
  
SELECT min(x) FROM t3 LIMIT 1
  
SELECT max(x) FROM t3 LIMIT 0
  
SELECT max(a) FROM t2 LIMIT 0
  
SELECT max(x) FROM t1;
  
SELECT * FROM (SELECT max(x) FROM t1);
    
SELECT min(x) FROM t1;
  
SELECT * FROM (SELECT min(x) FROM t1);
    
CREATE TABLE t4(a TEXT);
    INSERT INTO t4 VALUES('1234');
    INSERT INTO t4 VALUES('234');
    INSERT INTO t4 VALUES('34');
    SELECT min(a), max(a) FROM t4;
  
CREATE TABLE t5(a INTEGER);
    INSERT INTO t5 VALUES('1234');
    INSERT INTO t5 VALUES('234');
    INSERT INTO t5 VALUES('34');
    SELECT min(a), max(a) FROM t5;
  
SELECT max(rowid) FROM t4 UNION SELECT max(rowid) FROM t5
    
SELECT max(yy) FROM (
        SELECT max(rowid) AS yy FROM t4 UNION SELECT max(rowid) FROM t5
      )
    
SELECT max(yy) FROM (
        SELECT max(rowid) AS yy FROM t4 EXCEPT SELECT max(rowid) FROM t5
      )
    
CREATE TABLE t6(x);
    INSERT INTO t6 VALUES(1);
    INSERT INTO t6 VALUES(2);
    INSERT INTO t6 VALUES(NULL);
    SELECT coalesce(min(x),-1) FROM t6;
  
SELECT max(x) FROM t6;
  
CREATE INDEX i6 ON t6(x DESC);
    SELECT coalesce(min(x),-1) FROM t6;
  
SELECT max(x) FROM t6;
  
DELETE FROM t6 WHERE x NOT NULL;
    SELECT count(*) FROM t6;
  
SELECT count(x) FROM t6;
  
SELECT (SELECT min(x) FROM t6), (SELECT max(x) FROM t6);
    
SELECT min(x), max(x) FROM t6;
  
INSERT INTO t6 SELECT * FROM t6;
    INSERT INTO t6 SELECT * FROM t6;
    INSERT INTO t6 SELECT * FROM t6;
    INSERT INTO t6 SELECT * FROM t6;
    INSERT INTO t6 SELECT * FROM t6;
    INSERT INTO t6 SELECT * FROM t6;
    INSERT INTO t6 SELECT * FROM t6;
    INSERT INTO t6 SELECT * FROM t6;
    INSERT INTO t6 SELECT * FROM t6;
    INSERT INTO t6 SELECT * FROM t6;
    SELECT count(*) FROM t6;
  
SELECT count(x) FROM t6;
  
SELECT (SELECT min(x) FROM t6), (SELECT max(x) FROM t6);
    
SELECT min(x), max(x) FROM t6;
  
CREATE TABLE t11(a,b,c);
  INSERT INTO t11(a,b,c) VALUES(1,10,5),(2,8,11),(3,1,4),(4,20,1),(5,16,4);
  CREATE INDEX t11bc ON t11(b+c);
  SELECT max(b+c) FROM t11;

SELECT a, max(b+c) FROM t11;

SELECT a, min(b+c) FROM t11;

INSERT INTO t11(a,b,c) VALUES(6,NULL,0),(7,0,NULL);
  SELECT a, min(b+c) FROM t11;

