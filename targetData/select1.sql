SELECT * FROM test1
CREATE TABLE test1(f1 int, f2 int)
SELECT * FROM test1, test2
SELECT * FROM test2, test1
INSERT INTO test1(f1,f2) VALUES(11,22)
SELECT f1 FROM test1
SELECT f2 FROM test1
SELECT f2, f1 FROM test1
SELECT f1, f2 FROM test1
SELECT * FROM test1
SELECT *, * FROM test1
SELECT *, min(f1,f2), max(f1,f2) FROM test1
SELECT 'one', *, 'two', * FROM test1
CREATE TABLE test2(r1 real, r2 real)
INSERT INTO test2(r1,r2) VALUES(1.1,2.2)
SELECT * FROM test1, test2
SELECT *, 'hi' FROM test1, test2
SELECT 'one', *, 'two', * FROM test1, test2
SELECT test1.f1, test2.r1 FROM test1, test2
SELECT test1.f1, test2.r1 FROM test2, test1
SELECT * FROM test2, test1
SELECT * FROM test1 AS a, test1 AS b
SELECT max(test1.f1,test2.r1), min(test1.f2,test2.r2)
           FROM test2, test1
SELECT min(test1.f1,test2.r1), max(test1.f2,test2.r2)
           FROM test1, test2
SELECT count(f1,f2) FROM test1
SELECT count(f1) FROM test1
SELECT Count() FROM test1
SELECT COUNT(*) FROM test1
SELECT COUNT(*)+1 FROM test1
SELECT count(*),count(a),count(b) FROM t3
SELECT count(*),count(a),count(b) FROM t4
SELECT count(*),count(a),count(b) FROM t4 WHERE b=5
SELECT min(*) FROM test1
SELECT Min(f1) FROM test1
SELECT MIN(f1,f2) FROM test1
SELECT coalesce(min(a),'xyzzy') FROM t3
SELECT min(coalesce(a,'xyzzy')) FROM t3
SELECT min(b), min(b) FROM t4
SELECT MAX(*) FROM test1
SELECT Max(f1) FROM test1
SELECT max(f1,f2) FROM test1
SELECT MAX(f1,f2)+1 FROM test1
SELECT MAX(f1)+1 FROM test1
SELECT coalesce(max(a),'xyzzy') FROM t3
SELECT max(coalesce(a,'xyzzy')) FROM t3
SELECT SUM(*) FROM test1
SELECT Sum(f1) FROM test1
SELECT sum(f1,f2) FROM test1
SELECT SUM(f1)+1 FROM test1
SELECT sum(a) FROM t3
SELECT XYZZY(f1) FROM test1
SELECT SUM(min(f1,f2)) FROM test1
SELECT SUM(min(f1)) FROM test1
SELECT min(f1) AS m FROM test1 GROUP BY f1 HAVING max(m+5)<10
  
SELECT coalesce(min(f1)+5,11) AS m FROM test1
      GROUP BY f1
     HAVING max(m+5)<10
  
CREATE TABLE tkt2526(a,b,c PRIMARY KEY);
    INSERT INTO tkt2526 VALUES('x','y',NULL);
    INSERT INTO tkt2526 VALUES('x','z',NULL);
  
SELECT count(a) AS cn FROM tkt2526 GROUP BY a HAVING cn<max(cn)
  
SELECT f1 FROM test1 WHERE f1<11
SELECT f1 FROM test1 WHERE f1<=11
SELECT f1 FROM test1 WHERE f1=11
SELECT f1 FROM test1 WHERE f1>=11
SELECT f1 FROM test1 WHERE f1>11
SELECT f1 FROM test1 WHERE f1!=11
SELECT f1 FROM test1 WHERE min(f1,f2)!=11
SELECT f1 FROM test1 WHERE max(f1,f2)!=11
SELECT f1 FROM test1 WHERE count(f1,f2)!=11
SELECT f1 FROM test1 ORDER BY f1
SELECT f1 FROM test1 ORDER BY -f1
SELECT f1 FROM test1 ORDER BY min(f1,f2)
SELECT f1 FROM test1 ORDER BY min(f1)
INSERT INTO test1(f1) SELECT f1 FROM test1 ORDER BY min(f1);

#    SELECT f1 FROM test1 ORDER BY 8.4;
#  
#    SELECT f1 FROM test1 ORDER BY '8.4';
#  
#    SELECT f1 FROM test1 ORDER BY 'xyz';
#  
#    SELECT f1 FROM test1 ORDER BY -8.4;
#  
#    SELECT f1 FROM test1 ORDER BY +8.4;
#  
#    SELECT f1 FROM test1 ORDER BY 4294967296; -- constant larger than 32 bits
#  
SELECT f1 FROM test1 ORDER BY 8.4
  
SELECT f1 FROM test1 ORDER BY '8.4'
  
CREATE TABLE t5(a,b);
    INSERT INTO t5 VALUES(1,10);
    INSERT INTO t5 VALUES(2,9);
    SELECT * FROM t5 ORDER BY 1;
  
SELECT * FROM t5 ORDER BY 2;
  
SELECT * FROM t5 ORDER BY +2;
  
SELECT * FROM t5 ORDER BY 3;
  
SELECT * FROM t5 ORDER BY -1;
  
INSERT INTO t5 VALUES(3,10);
    SELECT * FROM t5 ORDER BY 2, 1 DESC;
  
SELECT * FROM t5 ORDER BY 1 DESC, b;
  
SELECT * FROM t5 ORDER BY b DESC, 1;
  
SELECT max(f1) FROM test1 ORDER BY f2
CREATE TABLE test2(t1 text, t2 text)
INSERT INTO test2 VALUES('abc','xyz')
SELECT f1 FROM test1 ORDER BY f2
SELECT f1 FROM test1 ORDER BY f2
SELECT f1 as 'f1' FROM test1 ORDER BY f2
SELECT * FROM test1 WHERE f1==11
SELECT DISTINCT * FROM test1 WHERE f1==11
SELECT * FROM test1 WHERE f1==11
SELECT DISTINCT * FROM test1 WHERE f1==11
SELECT f1 as xyzzy FROM test1 ORDER BY f2
SELECT f1 as "xyzzy" FROM test1 ORDER BY f2
SELECT f1 as 'xyzzy ' FROM test1 ORDER BY f2
SELECT f1+F2 as xyzzy FROM test1 ORDER BY f2
SELECT f1+F2 FROM test1 ORDER BY f2
SELECT test1.f1+F2 FROM test1 ORDER BY f2
PRAGMA full_column_names=on
SELECT test1.f1+F2 FROM test1 ORDER BY f2
PRAGMA full_column_names=off
SELECT test1.f1+F2, t1 FROM test1, test2 
         ORDER BY f2
SELECT A.f1, t1 FROM test1 as A, test2 
         ORDER BY f2
SELECT A.f1, f1 FROM test1 as A, test1 as B 
         ORDER BY f2
SELECT A.f1, B.f1 FROM test1 as A, test1 as B 
         ORDER BY f2
SELECT A.f1, f1 FROM test1 as A, test1 as A 
         ORDER BY f2
SELECT A.f1, B.f1 FROM test1 as A, test1 as B 
         ORDER BY A.f1, B.f1
SELECT A.f1, B.f1 FROM test1 as A, test1 as B 
         ORDER BY A.f1, B.f1
SELECT test1 . f1, test1 . f2 FROM test1 LIMIT 1
  
SELECT test1 . f1, test1 . f2 FROM test1 LIMIT 1
  
SELECT 123.45;
  
SELECT * FROM test1 a, test1 b LIMIT 1
  
SELECT * FROM test1 a, (select 5, 6) LIMIT 1
  
SELECT * FROM test1 a, (select 5 AS x, 6 AS y) AS b LIMIT 1
  
SELECT a.f1, b.f2 FROM test1 a, test1 b LIMIT 1
  
SELECT f1, t1 FROM test1, test2 LIMIT 1
  
SELECT a.f1, b.f2 FROM test1 a, test1 b LIMIT 1
  
SELECT f1, t1 FROM test1, test2 LIMIT 1
  
SELECT a.f1, b.f1 FROM test1 a, test1 b LIMIT 1
  
SELECT f1, t1 FROM test1, test2 LIMIT 1
  
SELECT a.f1, b.f1 FROM test1 a, test1 b LIMIT 1
  
SELECT f1, t1 FROM test1, test2 LIMIT 1
  
SELECT f1 FROM test1 UNION SELECT f2 FROM test1
    ORDER BY f2;
  
SELECT f1 FROM test1 UNION SELECT f2+100 FROM test1
    ORDER BY f2+101;
  
CREATE TABLE t6(a TEXT, b TEXT);
     INSERT INTO t6 VALUES('a','0');
     INSERT INTO t6 VALUES('b','1');
     INSERT INTO t6 VALUES('c','2');
     INSERT INTO t6 VALUES('d','3');
     SELECT a FROM t6 WHERE b IN 
        (SELECT b FROM t6 WHERE a<='b' UNION SELECT '3' AS x
                 ORDER BY 1 LIMIT 1)
   
SELECT a FROM t6 WHERE b IN 
        (SELECT b FROM t6 WHERE a<='b' UNION SELECT '3' AS x
                 ORDER BY 1 DESC LIMIT 1)
   
SELECT a FROM t6 WHERE b IN 
        (SELECT b FROM t6 WHERE a<='b' UNION SELECT '3' AS x
                 ORDER BY b LIMIT 2)
     ORDER BY a;
   
SELECT a FROM t6 WHERE b IN 
        (SELECT b FROM t6 WHERE a<='b' UNION SELECT '3' AS x
                 ORDER BY x DESC LIMIT 2)
     ORDER BY a;
   
SELECT f1 FROM test1 WHERE f2=;
  
SELECT f1 FROM test1 UNION SELECT WHERE;
  
SELECT f1 FROM test1 as 'hi', test2 as
SELECT f1 FROM test1 ORDER BY;
  
SELECT f1 FROM test1 ORDER BY f1 desc, f2 where;
  
SELECT count(f1,f2 FROM test1;
  
SELECT count(f1,f2+) FROM test1;
  
SELECT f1 FROM test1 ORDER BY f2, f1+;
  
SELECT f1 FROM test1 LIMIT 5+3 OFFSET 11 ORDER BY f2;
  
SELECT f1 FROM test1 WHERE 4.3+2.4 OR 1 ORDER BY f1
SELECT f1 FROM test1 WHERE ('x' || f1) BETWEEN 'x10' AND 'x20'
    ORDER BY f1
  
SELECT f1 FROM test1 WHERE 5-3==2
    ORDER BY f1
  
SELECT coalesce(f1/(f1-11),'x'),
           coalesce(min(f1/(f1-11),5),'y'),
           coalesce(max(f1/(f1-33),6),'z')
    FROM test1 ORDER BY f1
  
SELECT min(1,2,3), -max(1,2,3)
    FROM test1 ORDER BY f1
  
PRAGMA empty_result_callbacks=on
SELECT f1 AS x FROM test1 ORDER BY x
  
SELECT f1 AS x FROM test1 ORDER BY -x
  
SELECT f1-23 AS x FROM test1 ORDER BY abs(x)
  
SELECT f1-23 AS x FROM test1 ORDER BY -abs(x)
  
SELECT f1-22 AS x, f2-22 as y FROM test1
  
SELECT f1-22 AS x, f2-22 as y FROM test1 WHERE x>0 AND y<50
  
SELECT f1 COLLATE nocase AS x FROM test1 ORDER BY x
  
DELETE FROM t3;
    DELETE FROM t4;
    INSERT INTO t3 VALUES(1,2);
    INSERT INTO t4 VALUES(3,4);
    SELECT * FROM t3, t4;
  
SELECT * FROM t3, t4;
  
SELECT * FROM t3, t4;
  
SELECT t3.*, t4.b FROM t3, t4;
  
SELECT "t3".*, t4.b FROM t3, t4;
  
SELECT t3.*, t4.b FROM t3, t4;
  
SELECT x.*, y.b FROM t3 AS x, t4 AS y;
  
SELECT t3.b, t4.* FROM t3, t4;
  
SELECT t3.b, t4.* FROM t3, t4;
  
SELECT x.b, y.* FROM t3 AS x, t4 AS y;
  
SELECT t5.* FROM t3, t4;
  
SELECT t3.* FROM t3 AS x, t4;
  
SELECT t3.* FROM t3, (SELECT max(a), max(b) FROM t4)
    
SELECT t3.* FROM (SELECT max(a), max(b) FROM t4), t3
    
SELECT * FROM t3, (SELECT max(a), max(b) FROM t4) AS 'tx'
    
SELECT y.*, t3.* FROM t3, (SELECT max(a), max(b) FROM t4) AS y
    
SELECT y.* FROM t3 as y, t4 as z
  
SELECT 1+2+3
  
SELECT 1,'hello',2
  
SELECT 1 AS 'a','hello' AS 'b',2 AS 'c'
  
DELETE FROM t3;
    INSERT INTO t3 VALUES(1,2);
  
SELECT * FROM t3 UNION SELECT 3 AS 'a', 4 ORDER BY a;
  
SELECT 3, 4 UNION SELECT * FROM t3;
  
SELECT * FROM t3 WHERE a=(SELECT 1);
    
SELECT * FROM t3 WHERE a=(SELECT 2);
    
SELECT x FROM (
        SELECT a AS x, b AS y FROM t3 UNION SELECT a,b FROM t4 ORDER BY a,b
      ) ORDER BY x;
    
SELECT z.x FROM (
        SELECT a AS x,b AS y FROM t3 UNION SELECT a, b FROM t4 ORDER BY a,b
      ) AS 'z' ORDER BY x;
    
BEGIN;
      create TABLE abc(a, b, c, PRIMARY KEY(a, b));
      INSERT INTO abc VALUES(1, 1, 1);
    
INSERT INTO abc SELECT a+(select max(a) FROM abc), 
            b+(select max(a) FROM abc), c+(select max(a) FROM abc) FROM abc;
      
COMMIT
SELECT count(
        (SELECT a FROM abc WHERE a = NULL AND b >= upper.c) 
      ) FROM abc AS upper;
    
db eval "DROP TABLE $tab"

SELECT * FROM sqlite_master WHERE rowid>10; 
    SELECT * FROM sqlite_master WHERE rowid=10;
    SELECT * FROM sqlite_master WHERE rowid<10;
    SELECT * FROM sqlite_master WHERE rowid<=10;
    SELECT * FROM sqlite_master WHERE rowid>=10;
    SELECT * FROM sqlite_master;
  
SELECT 10 IN (SELECT rowid FROM sqlite_master);
  
CREATE TABLE t1(a);
      CREATE INDEX i1 ON t1(a);
      INSERT INTO t1 VALUES(1);
      INSERT INTO t1 VALUES(2);
      INSERT INTO t1 VALUES(3);
    
DROP INDEX i1 
SELECT 2 IN (SELECT a FROM t1) 
SELECT 1 FROM (SELECT *)
SELECT 1 FROM sqlite_master LIMIT 1,#1;

DROP TABLE IF EXISTS t1;
  DROP TABLE IF EXISTS t2;
  CREATE TABLE t1(x);   INSERT INTO t1 VALUES(1);
  CREATE TABLE t2(y,z); INSERT INTO t2 VALUES(2,3);
  CREATE INDEX t2y ON t2(y);
  SELECT * FROM t1,(SELECT * FROM t2 WHERE y=2 ORDER BY y,z);

SELECT * FROM t1,(SELECT * FROM t2 WHERE y=2 ORDER BY y,z LIMIT 4);

SELECT * FROM t1,(SELECT * FROM t2 WHERE y=2
         UNION ALL SELECT * FROM t2 WHERE y=3 ORDER BY y,z LIMIT 4);

DROP TABLE IF EXISTS t1;
  DROP TABLE IF EXISTS t2;
  CREATE TABLE t1(c);
  CREATE TABLE t2(x PRIMARY KEY, y);
  INSERT INTO t1(c) VALUES(123);
  INSERT INTO t2(x) VALUES(123);
  SELECT x FROM t2, t1 WHERE x BETWEEN c AND null OR x AND
  x IN ((SELECT x FROM (SELECT x FROM t2, t1 
  WHERE x BETWEEN (SELECT x FROM (SELECT x COLLATE rtrim 
  FROM t2, t1 WHERE x BETWEEN c AND null
  OR x AND x IN (c)), t1 WHERE x BETWEEN c AND null
  OR x AND x IN (c)) AND null
  OR NOT EXISTS(SELECT -4.81 FROM t1, t2 WHERE x BETWEEN c AND null
  OR x AND x IN ((SELECT x FROM (SELECT x FROM t2, t1
  WHERE x BETWEEN (SELECT x FROM (SELECT x BETWEEN c AND null
  OR x AND x IN (c)), t1 WHERE x BETWEEN c AND null
  OR x AND x IN (c)) AND null
  OR x AND x IN (c)), t1 WHERE x BETWEEN c AND null
  OR x AND x IN (c)))) AND x IN (c)
  ), t1 WHERE x BETWEEN c AND null
  OR x AND x IN (c)));

DROP TABLE IF EXISTS t1;
  DROP TABLE IF EXISTS t2;
  CREATE TABLE t1(c);
  CREATE TABLE t2(x PRIMARY KEY, y);
  INSERT INTO t1(c) VALUES(123);
  INSERT INTO t2(x) VALUES(123);
  SELECT x FROM t2, t1 WHERE x BETWEEN c AND (c+1) OR x AND
  x IN ((SELECT x FROM (SELECT x FROM t2, t1 
  WHERE x BETWEEN (SELECT x FROM (SELECT x COLLATE rtrim 
  FROM t2, t1 WHERE x BETWEEN c AND (c+1)
  OR x AND x IN (c)), t1 WHERE x BETWEEN c AND (c+1)
  OR x AND x IN (c)) AND (c+1)
  OR NOT EXISTS(SELECT -4.81 FROM t1, t2 WHERE x BETWEEN c AND (c+1)
  OR x AND x IN ((SELECT x FROM (SELECT x FROM t2, t1
  WHERE x BETWEEN (SELECT x FROM (SELECT x BETWEEN c AND (c+1)
  OR x AND x IN (c)), t1 WHERE x BETWEEN c AND (c+1)
  OR x AND x IN (c)) AND (c+1)
  OR x AND x IN (c)), t1 WHERE x BETWEEN c AND (c+1)
  OR x AND x IN (c)))) AND x IN (c)
  ), t1 WHERE x BETWEEN c AND (c+1)
  OR x AND x IN (c)));

SELECT 1 FROM t1 WHERE (
    SELECT 2 FROM t2 WHERE (
      SELECT 3 FROM (
        SELECT x FROM t2 WHERE x=c OR x=(SELECT x FROM (VALUES(0)))
      ) WHERE x>c OR x=c
    )
  );

SELECT 1 FROM t1, t2 WHERE (
    SELECT 3 FROM (
      SELECT x FROM t2 WHERE x=c OR x=(SELECT x FROM (VALUES(0)))
    ) WHERE x>c OR x=c
  );

DROP TABLE IF EXISTS t1;
  CREATE TABLE t1(x);

INSERT INTO t1
    SELECT 1,2,3,4,5,6,7
    UNION ALL SELECT 1,2,3,4,5,6,7
    ORDER BY 1;

INSERT INTO t1
    SELECT 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15
    UNION ALL SELECT 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15
    ORDER BY 1;

CREATE TABLE t1 (
    a INTEGER PRIMARY KEY,
    b AS('Y') UNIQUE
  );
  INSERT INTO t1(a) VALUES (10);
  SELECT * FROM t1 JOIN t1 USING(a,b)
   WHERE ((SELECT t1.a FROM t1 AS x GROUP BY b) AND b=0)
      OR a = 10;

SELECT ifnull(a, max((SELECT 123))), count(a) FROM t1 ;

CREATE TABLE t1(a IMTEGES PRIMARY KEY,R);
  CREATE TABLE t2(x UNIQUE);
  CREATE VIEW v1a(z,y) AS SELECT x IS NULL, x FROM t2;
  SELECT a,(+a)b,(+a)b,(+a)b,NOT EXISTS(SELECT null FROM t2),CASE z WHEN 487 THEN 992 WHEN 391 THEN 203 WHEN 10 THEN '?k<D Q' END,'' FROM t1 LEFT JOIN v1a ON z=b;
