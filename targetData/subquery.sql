BEGIN;
    CREATE TABLE t1(a,b);
    INSERT INTO t1 VALUES(1,2);
    INSERT INTO t1 VALUES(3,4);
    INSERT INTO t1 VALUES(5,6);
    INSERT INTO t1 VALUES(7,8);
    CREATE TABLE t2(x,y);
    INSERT INTO t2 VALUES(1,1);
    INSERT INTO t2 VALUES(3,9);
    INSERT INTO t2 VALUES(5,25);
    INSERT INTO t2 VALUES(7,49);
    COMMIT;
  
SELECT a, (SELECT y FROM t2 WHERE x=a) FROM t1 WHERE b<8
  
UPDATE t1 SET b=b+(SELECT y FROM t2 WHERE x=a);
    SELECT * FROM t1;
  
SELECT b FROM t1 WHERE EXISTS(SELECT * FROM t2 WHERE y=a)
  
SELECT b FROM t1 WHERE NOT EXISTS(SELECT * FROM t2 WHERE y=a)
  
SELECT a, x FROM t1, t2 WHERE t1.a = (SELECT x);
  
CREATE INDEX i1 ON t1(a);
    SELECT a, x FROM t1, t2 WHERE t1.a = (SELECT x);
  
SELECT a, x FROM t2, t1 WHERE t1.a = (SELECT x);
  
SELECT count(*) FROM t1 WHERE a > (SELECT count(*) FROM t2);
  
SELECT (y*2)>b FROM t1, t2 WHERE a=x;
  
SELECT a FROM t1 WHERE (SELECT (y*2)>b FROM t2 WHERE a=x); 
  
SELECT (SELECT a), b FROM t1;
  
SELECT * FROM (SELECT (SELECT a), b FROM t1);
  
SELECT * FROM (SELECT (SELECT sum(a) FROM t1));
  
CREATE TABLE t5 (val int, period text PRIMARY KEY);
    INSERT INTO t5 VALUES(5, '2001-3');
    INSERT INTO t5 VALUES(10, '2001-4');
    INSERT INTO t5 VALUES(15, '2002-1');
    INSERT INTO t5 VALUES(5, '2002-2');
    INSERT INTO t5 VALUES(10, '2002-3');
    INSERT INTO t5 VALUES(15, '2002-4');
    INSERT INTO t5 VALUES(10, '2003-1');
    INSERT INTO t5 VALUES(5, '2003-2');
    INSERT INTO t5 VALUES(25, '2003-3');
    INSERT INTO t5 VALUES(5, '2003-4');

    SELECT period, vsum
    FROM (SELECT 
      a.period,
      (select sum(val) from t5 where period between a.period and '2002-4') vsum
      FROM t5 a where a.period between '2002-1' and '2002-4')
    WHERE vsum < 45 ;
  
SELECT period, vsum from
      (select a.period,
      (select sum(val) from t5 where period between a.period and '2002-4') vsum
    FROM t5 a where a.period between '2002-1' and '2002-4') 
    WHERE vsum < 45 ;
  
DROP TABLE t5;
  
SELECT (SELECT 10);
  
CREATE TABLE t3(a PRIMARY KEY, b);
    INSERT INTO t3 VALUES(1, 2);
    INSERT INTO t3 VALUES(3, 1);
  
SELECT * FROM t3 WHERE a IN (SELECT b FROM t3);
  
DROP TABLE t3;
  
CREATE TABLE t3(a TEXT);
    INSERT INTO t3 VALUES('10');
  
SELECT a IN (10.0, 20) FROM t3;
  
DROP TABLE t3;
  
CREATE TABLE t3(a TEXT);
    INSERT INTO t3 VALUES('XX');
  
SELECT count(*) FROM t3 WHERE a IN (SELECT 'XX')
  
DROP TABLE t3;
  
CREATE TABLE t3(a INTEGER);
    INSERT INTO t3 VALUES(10);

    CREATE TABLE t4(x TEXT);
    INSERT INTO t4 VALUES('10.0');
  
SELECT * FROM t4 WHERE x IN (SELECT a FROM t3);
  
CREATE INDEX t4i ON t4(x);
    SELECT * FROM t4 WHERE x IN (SELECT a FROM t3);
  
EXPLAIN QUERY PLAN
    SELECT * FROM t4 WHERE x IN (SELECT a FROM t3);
  
DROP TABLE t3;
    DROP TABLE t4;
  
DROP TABLE t1; 
DROP TABLE t2; 
CREATE TABLE t1(a,b);
      INSERT INTO t1 VALUES(1,2);
      CREATE VIEW v1 AS SELECT b FROM t1 WHERE a>0;
      CREATE TABLE t2(p,q);
      INSERT INTO t2 VALUES(2,9);
      SELECT * FROM v1 WHERE EXISTS(SELECT * FROM t2 WHERE p=v1.b);
    
SELECT * FROM v1 WHERE EXISTS(SELECT 1);
    
DROP TABLE t1; 
DROP TABLE t2; 
CREATE TABLE t1(a,b);
    INSERT INTO t1 VALUES(1,2);
    CREATE TABLE t2(p,q);
    INSERT INTO t2 VALUES(2,9);
  
CREATE TABLE t1(a,b);
    INSERT INTO t1 VALUES(1,2);
  
SELECT (SELECT t1.a) FROM t1;
  
SELECT a, (SELECT b) FROM t1 GROUP BY a;
  
DROP TABLE t2
CREATE TABLE t2(c, d);
    INSERT INTO t2 VALUES(1, 'one');
    INSERT INTO t2 VALUES(2, 'two');
    SELECT a, (SELECT d FROM t2 WHERE a=c) FROM t1 GROUP BY a;
  
INSERT INTO t1 VALUES(2, 4);
    SELECT max(a), (SELECT d FROM t2 WHERE a=c) FROM t1;
  
SELECT a, (SELECT (SELECT d FROM t2 WHERE a=c)) FROM t1 GROUP BY a;
  
SELECT a, (SELECT count(*) FROM t2 WHERE a=c) FROM t1;
  
CREATE TABLE t34(x,y);
    INSERT INTO t34 VALUES(106,4), (107,3), (106,5), (107,5);
    SELECT a.x, avg(a.y)
      FROM t34 AS a
     GROUP BY a.x
     HAVING NOT EXISTS( SELECT b.x, avg(b.y)
                          FROM t34 AS b
                         GROUP BY b.x
                         HAVING avg(a.y) > avg(b.y));
  
SELECT a.x, avg(a.y) AS avg1
      FROM t34 AS a
     GROUP BY a.x
     HAVING NOT EXISTS( SELECT b.x, avg(b.y) AS avg2
                          FROM t34 AS b
                         GROUP BY b.x
                         HAVING avg1 > avg2);
  
SELECT
       a.x,
       avg(a.y),
       NOT EXISTS ( SELECT b.x, avg(b.y)
                      FROM t34 AS b
                      GROUP BY b.x
                     HAVING avg(a.y) > avg(b.y)),
       EXISTS ( SELECT c.x, avg(c.y)
                  FROM t34 AS c
                  GROUP BY c.x
                 HAVING avg(a.y) > avg(c.y))
      FROM t34 AS a
     GROUP BY a.x
     ORDER BY a.x;
  
CREATE TABLE t35a(x); INSERT INTO t35a VALUES(1),(2),(3);
    CREATE TABLE t35b(y); INSERT INTO t35b VALUES(98), (99);
    SELECT max((SELECT avg(y) FROM t35b)) FROM t35a;
  
SELECT max((SELECT count(y) FROM t35b)) FROM t35a;
  
SELECT max((SELECT count() FROM t35b)) FROM t35a;
  
SELECT max((SELECT count(x) FROM t35b)) FROM t35a;
  
SELECT max((SELECT count(x) FROM t35b)) FROM t35a;
  
SELECT max((SELECT a FROM (SELECT count(x) AS a FROM t35b))) FROM t35a;
  
SELECT max((SELECT a FROM (SELECT count(y) AS a FROM t35b))) FROM t35a;
  
SELECT (SELECT a FROM t1);
  
DELETE FROM t1;
    SELECT (SELECT a FROM t1);
  
CREATE TABLE t3(a PRIMARY KEY);
    INSERT INTO t3 VALUES(10);
  
INSERT INTO t3 VALUES((SELECT max(a) FROM t3)+1)
INSERT INTO t3 VALUES((SELECT max(a) FROM t3)+1)
CREATE TABLE t4(x,y);
    INSERT INTO t4 VALUES('one',1);
    INSERT INTO t4 VALUES('two',2);
    INSERT INTO t4 VALUES('three',3);
    INSERT INTO t4 VALUES('four',4);
    CREATE TABLE t5(a,b);
    INSERT INTO t5 VALUES(1,11);
    INSERT INTO t5 VALUES(2,22);
    INSERT INTO t5 VALUES(3,33);
    INSERT INTO t5 VALUES(4,44);
    SELECT b FROM t5 WHERE a IN 
       (SELECT callcnt(y)+0 FROM t4 WHERE x='two')
  
SELECT x FROM t4 WHERE 1 IN (SELECT callcnt(count(*)) FROM t5 WHERE a=y)
  
SELECT x FROM t4 WHERE 1 IN (SELECT callcnt(count(*)) FROM t5 WHERE a=1)
  
CREATE TABLE t7(c7);
    INSERT INTO t7 VALUES(1);
    INSERT INTO t7 VALUES(2);
    INSERT INTO t7 VALUES(3);
    CREATE TABLE t8(c8);
    INSERT INTO t8 VALUES(100);
    INSERT INTO t8 VALUES(200);
    INSERT INTO t8 VALUES(300);
    CREATE TABLE t9(c9);
    INSERT INTO t9 VALUES(10000);
    INSERT INTO t9 VALUES(20000);
    INSERT INTO t9 VALUES(30000);

    SELECT (SELECT c7+c8 FROM t7) FROM t8;
  
SELECT (SELECT max(c7)+c8 FROM t7) FROM t8;
  
SELECT (SELECT c7+max(c8) FROM t8) FROM t7
  
SELECT (SELECT max(c7)+max(c8) FROM t8) FROM t7
  
SELECT (SELECT c8 FROM t8 WHERE rowid=max(c7)) FROM t7
  
SELECT (SELECT (SELECT max(c7+c8+c9) FROM t9) FROM t8) FROM t7
  
SELECT (SELECT (SELECT c7+max(c8+c9) FROM t9) FROM t8) FROM t7
  
SELECT (SELECT (SELECT max(c7)+c8+c9 FROM t9) FROM t8) FROM t7
  
SELECT (SELECT (SELECT c7+max(c8)+c9 FROM t9) FROM t8) FROM t7
  
SELECT (SELECT (SELECT c7+c8+max(c9) FROM t9) FROM t8) FROM t7
  
SELECT (SELECT (SELECT max(c7)+max(c8)+max(c9) FROM t9) FROM t8) FROM t7
  
CREATE TABLE t8(a TEXT, b INT);
  SELECT (SELECT 0 FROM (SELECT * FROM t1)) AS x WHERE x;
  SELECT (SELECT 0 FROM (SELECT * FROM (SELECT 0))) AS x WHERE x;

CREATE TABLE t1(x);
  INSERT INTO t1 VALUES(1),(1),(1);
  SELECT (SELECT DISTINCT x FROM t1 ORDER BY +x LIMIT 1 OFFSET 100) FROM t1;

SELECT (SELECT DISTINCT x FROM t1 ORDER BY +x LIMIT 1 OFFSET 0) FROM t1;

INSERT INTO t1 VALUES(2);
  SELECT (SELECT DISTINCT x FROM t1 ORDER BY +x LIMIT 1 OFFSET 1) FROM t1;

SELECT (SELECT DISTINCT x FROM t1 ORDER BY +x LIMIT 1 OFFSET 2) FROM t1;

