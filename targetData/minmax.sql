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
CREATE INDEX t1i1 ON t1(x)
SELECT min(x) FROM t1
SELECT max(x) FROM t1
SELECT max(y) FROM t1
SELECT min(x) FROM t1 WHERE x=5
SELECT min(x) FROM t1 WHERE x>=5
SELECT min(x) FROM t1 WHERE x>=4.5
SELECT min(x) FROM t1 WHERE x<4.5
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
  
SELECT max(rowid) AS yy FROM t4 UNION SELECT max(rowid) FROM t5
    
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
  
CREATE INDEX i6 ON t6(x);
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
  
CREATE INDEX t1i2 ON t1(y,x);
    SELECT min(x) FROM t1 WHERE y=5;
  
SELECT max(x) FROM t1 WHERE y=5;
  
SELECT min(x) FROM t1 WHERE y=6;
  
SELECT max(x) FROM t1 WHERE y=6;
  
SELECT min(x) FROM t1 WHERE y=1;
  
SELECT max(x) FROM t1 WHERE y=1;
  
SELECT min(x) FROM t1 WHERE y=0;
  
SELECT max(x) FROM t1 WHERE y=0;
  
SELECT min(x) FROM t1 WHERE y=5 AND x>=17.5;
  
SELECT max(x) FROM t1 WHERE y=5 AND x>=17.5;
  
CREATE TABLE t7(a,b,c);
    INSERT INTO t7 SELECT y, x, x*y FROM t1;
    INSERT INTO t7 SELECT y, x, x*y+1000 FROM t1;
    CREATE INDEX t7i1 ON t7(a,b,c);
    SELECT min(a) FROM t7;
  
SELECT max(a) FROM t7;
  
SELECT max(a) FROM t7 WHERE a=5;
  
SELECT min(b) FROM t7 WHERE a=5;
  
SELECT max(b) FROM t7 WHERE a=5;
  
SELECT min(b) FROM t7 WHERE a=4;
  
SELECT max(b) FROM t7 WHERE a=4;
  
SELECT min(c) FROM t7 WHERE a=4 AND b=10;
  
SELECT max(c) FROM t7 WHERE a=4 AND b=10;
  
SELECT min(rowid) FROM t7;
  
SELECT max(rowid) FROM t7;
  
SELECT min(rowid) FROM t7 WHERE a=3;
  
SELECT max(rowid) FROM t7 WHERE a=3;
  
SELECT min(rowid) FROM t7 WHERE a=3 AND b=5;
  
SELECT max(rowid) FROM t7 WHERE a=3 AND b=5;
  
SELECT min(rowid) FROM t7 WHERE a=3 AND b=5 AND c=1015;
  
SELECT max(rowid) FROM t7 WHERE a=3 AND b=5 AND c=15;
  
set ::sqlite_search_count 0
  uplevel [list do_execsql_test $name.1 $sql1 $res]
  set a $::sqlite_search_count

  set ::sqlite_search_count 0
  uplevel [list do_execsql_test $name.2 $sql2 $res]
  set b $::sqlite_search_count

  uplevel [list do_test $name.3 [list expr "$a $op $b"] 1]

uplevel [list do_test_13 < $name $sql1 $sql2 $res]

uplevel [list do_test_13 == $name $sql1 $sql2 $res]

CREATE TABLE t1(a, b, c);
  INSERT INTO t1 VALUES('a', 1, 1);
  INSERT INTO t1 VALUES('b', 6, 6);
  INSERT INTO t1 VALUES('c', 5, 5);
  INSERT INTO t1 VALUES('a', 4, 4);
  INSERT INTO t1 VALUES('a', 5, 5);
  INSERT INTO t1 VALUES('c', 6, 6);
  INSERT INTO t1 VALUES('b', 4, 4);
  INSERT INTO t1 VALUES('c', 7, 7);
  INSERT INTO t1 VALUES('b', 2, 2);
  INSERT INTO t1 VALUES('b', 3, 3);
  INSERT INTO t1 VALUES('a', 3, 3);
  INSERT INTO t1 VALUES('b', 5, 5);
  INSERT INTO t1 VALUES('c', 4, 4);
  INSERT INTO t1 VALUES('c', 3, 3);
  INSERT INTO t1 VALUES('a', 2, 2);
  SELECT * FROM t1 ORDER BY a, b, c;

CREATE INDEX i1 ON t1(a, b, c) 
CREATE TABLE t14(a INTEGER, b INTEGER);
  INSERT INTO t14(a,b) VALUES(100,2),(200,2),(300,2),(400,1),(500,2);
  SELECT min(a) FROM t14 WHERE b='2' AND a>'50';

CREATE INDEX t14ba ON t14(b,a);
  SELECT min(a) FROM t14 WHERE b='2' AND a>'50';

CREATE TABLE t1(a);
  CREATE TABLE t2(b);
  CREATE TABLE t3(c);
  INSERT INTO t1 VALUES(0);
  INSERT INTO t2 VALUES(5);
  SELECT MIN((SELECT b FROM t2 UNION SELECT x FROM (SELECT x FROM (SELECT 1 AS x WHERE t1.a=1) UNION ALL SELECT c FROM t3))) FROM t1;

