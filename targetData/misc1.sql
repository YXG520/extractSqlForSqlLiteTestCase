SELECT x0, x10, x25, x50, x75 FROM manycol
SELECT x50 FROM manycol ORDER BY x80+0
SELECT x50 FROM manycol ORDER BY x80
SELECT x75 FROM manycol WHERE x50=350
SELECT x50 FROM manycol WHERE x99=599
CREATE INDEX manycol_idx1 ON manycol(x99)
SELECT x50 FROM manycol WHERE x99=899
SELECT count(*) FROM manycol
DELETE FROM manycol WHERE x98=1234
SELECT count(*) FROM manycol
DELETE FROM manycol WHERE x98=998
SELECT count(*) FROM manycol
DELETE FROM manycol WHERE x99=500
SELECT count(*) FROM manycol
DELETE FROM manycol WHERE x99=599
SELECT count(*) FROM manycol
BEGIN TRANSACTION;
    CREATE TABLE agger(one text, two text, three text, four text);
    INSERT INTO agger VALUES(1, 'one', 'hello', 'yes');
    INSERT INTO agger VALUES(2, 'two', 'howdy', 'no');
    INSERT INTO agger VALUES(3, 'thr', 'howareya', 'yes');
    INSERT INTO agger VALUES(4, 'two', 'lothere', 'yes');
    INSERT INTO agger VALUES(5, 'one', 'atcha', 'yes');
    INSERT INTO agger VALUES(6, 'two', 'hello', 'no');
    COMMIT
  
SELECT count(*) FROM agger
SELECT sum(one), two, four FROM agger
           GROUP BY two, four ORDER BY sum(one) desc
SELECT sum((one)), (two), (four) FROM agger
           GROUP BY (two), (four) ORDER BY sum(one) desc
CREATE TABLE t1(a);
    INSERT INTO t1 VALUES('hi');
    PRAGMA full_column_names=on;
    SELECT rowid, * FROM t1;
  
BEGIN;
    CREATE TABLE t2(a);
    INSERT INTO t2 VALUES('This is a long string to use up a lot of disk -');
    UPDATE t2 SET a=a||a||a||a;
    INSERT INTO t2 SELECT '1 - ' || a FROM t2;
    INSERT INTO t2 SELECT '2 - ' || a FROM t2;
    INSERT INTO t2 SELECT '3 - ' || a FROM t2;
    INSERT INTO t2 SELECT '4 - ' || a FROM t2;
    INSERT INTO t2 SELECT '5 - ' || a FROM t2;
    INSERT INTO t2 SELECT '6 - ' || a FROM t2;
    COMMIT;
    SELECT count(*) FROM t2;
  
CREATE TABLE t3(a,b);
    INSERT INTO t3 VALUES(1,2);
    INSERT INTO t3 VALUES(3,4);
    UPDATE t3 SET a=0 WHEREwww b=2;
  
SELECT * FROM t3 ORDER BY a;
  
CREATE TABLE t4(
      abort, asc, begin, cluster, conflict, copy, delimiters, desc, end,
      explain, fail, ignore, key, offset, pragma, replace, temp,
      vacuum, view
    );
  
INSERT INTO t4
       VALUES(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19);
  
SELECT * FROM t4
  
SELECT abort+asc,max(key,pragma,temp) FROM t4
  
CREATE TABLE error1(
      a TYPE PRIMARY KEY,
      b TYPE PRIMARY KEY
    );
  
CREATE TABLE error1(
      a INTEGER PRIMARY KEY,
      b TYPE PRIMARY KEY
    );
  
CREATE TABLE t5(a,b,c,PRIMARY KEY(a,b));
    INSERT INTO t5 VALUES(1,2,3);
    SELECT * FROM t5 ORDER BY a;
  
INSERT INTO t5 VALUES(1,2,4);
  
INSERT INTO t5 VALUES(0,2,4);
  
SELECT * FROM t5 ORDER BY a;
  
SELECT *;
  
SELECT t1.*;
  
DROP TABLE t1;
  DROP TABLE t2;
  DROP TABLE t3;
  DROP TABLE t4;

CREATE TABLE t1(a unique not null, b unique not null);
    INSERT INTO t1 VALUES('a',1234567890123456789);
    INSERT INTO t1 VALUES('b',1234567891123456789);
    INSERT INTO t1 VALUES('c',1234567892123456789);
    SELECT * FROM t1;
  
SELECT count(*) FROM manycol
SELECT count(*) FROM manycol
SELECT x1 FROM manycol WHERE x0=100
SELECT x1 FROM manycol WHERE x0=100
SELECT x1 FROM manycol WHERE x0=100
BEGIN
UPDATE t1 SET a=0 WHERE 0
COMMIT
SELECT '0'=='0.0'
SELECT '0'==0.0
SELECT '12345678901234567890'=='12345678901234567891'
CREATE TABLE t6(a INT UNIQUE, b TEXT UNIQUE);
    INSERT INTO t6 VALUES('0','0.0');
    SELECT * FROM t6;
  
INSERT OR IGNORE INTO t6 VALUES(0.0,'x');
      SELECT * FROM t6;
    
INSERT OR IGNORE INTO t6 VALUES('y',0);
      SELECT * FROM t6;
    
CREATE TABLE t7(x INTEGER, y TEXT, z);
    INSERT INTO t7 VALUES(0,0,1);
    INSERT INTO t7 VALUES(0.0,0,2);
    INSERT INTO t7 VALUES(0,0.0,3);
    INSERT INTO t7 VALUES(0.0,0.0,4);
    SELECT DISTINCT x, y FROM t7 ORDER BY z;
  
SELECT min(z), max(z), count(z) FROM t7 GROUP BY x ORDER BY 1;
  
SELECT min(z), max(z), count(z) FROM t7 GROUP BY y ORDER BY 1;
  
#    SELECT * FROM t6 ORDER BY a COLLATE unknown;
#  
CREATE TABLE t8(x TEXT COLLATE numeric, y INTEGER COLLATE text, z);
    INSERT INTO t8 VALUES(0,0,1);
    INSERT INTO t8 VALUES(0.0,0,2);
    INSERT INTO t8 VALUES(0,0.0,3);
    INSERT INTO t8 VALUES(0.0,0.0,4);
    SELECT DISTINCT x, y FROM t8 ORDER BY z;
  
SELECT min(z), max(z), count(z) FROM t8 GROUP BY x ORDER BY 1;
  
SELECT min(z), max(z), count(z) FROM t8 GROUP BY y ORDER BY 1;
  
CREATE TABLE t9(x,y);
       INSERT INTO t9 VALUES('one',1);
       INSERT INTO t9 VALUES('two',2);
       INSERT INTO t9 VALUES('three',3);
       INSERT INTO t9 VALUES('four',4);
       INSERT INTO t9 VALUES('five',5);
       INSERT INTO t9 VALUES('six',6);
       INSERT INTO t9 VALUES('seven',7);
       INSERT INTO t9 VALUES('eight',8);
       INSERT INTO t9 VALUES('nine',9);
       INSERT INTO t9 VALUES('ten',10);
       INSERT INTO t9 VALUES('eleven',11);
       SELECT y FROM t9
       WHERE x=(SELECT x FROM t9 WHERE y=1)
          OR x=(SELECT x FROM t9 WHERE y=2)
          OR x=(SELECT x FROM t9 WHERE y=3)
          OR x=(SELECT x FROM t9 WHERE y=4)
          OR x=(SELECT x FROM t9 WHERE y=5)
          OR x=(SELECT x FROM t9 WHERE y=6)
          OR x=(SELECT x FROM t9 WHERE y=7)
          OR x=(SELECT x FROM t9 WHERE y=8)
          OR x=(SELECT x FROM t9 WHERE y=9)
          OR x=(SELECT x FROM t9 WHERE y=10)
          OR x=(SELECT x FROM t9 WHERE y=11)
          OR x=(SELECT x FROM t9 WHERE y=12)
          OR x=(SELECT x FROM t9 WHERE y=13)
          OR x=(SELECT x FROM t9 WHERE y=14)
       ;
     
BEGIN
UPDATE t1 SET a=a||'x' WHERE 0
UPDATE t1 SET a=a||'y' WHERE 1
COMMIT
CREATE TABLE t10 AS SELECT c1;
  
CREATE TABLE t10 AS SELECT t9.c1;
  
CREATE TABLE t10 AS SELECT main.t9.c1;
  
CREATE TABLE t10 AS SELECT 1;
  
SELECT name FROM sqlite_master LIMIT 1
CREATE TABLE test(a integer, primary key(a));
  
CREATE TABLE test(a integer, primary key(a));
  
CREATE TABLE test2(a text primary key, b text, primary key(a,b));
  
INSERT INTO test VALUES(1);
    SELECT rowid, a FROM test;
  
INSERT INTO test VALUES(5);
    SELECT rowid, a FROM test;
  
INSERT INTO test VALUES(NULL);
    SELECT rowid, a FROM test;
  
BEGIN;
    CREATE TABLE RealTable(TestID INTEGER PRIMARY KEY, TestString TEXT);
    CREATE TEMP TABLE TempTable(TestID INTEGER PRIMARY KEY, TestString TEXT);
    CREATE TEMP TRIGGER trigTest_1 AFTER UPDATE ON TempTable BEGIN
      INSERT INTO RealTable(TestString) 
         SELECT new.TestString FROM TempTable LIMIT 1;
    END;
    INSERT INTO TempTable(TestString) VALUES ('1');
    INSERT INTO TempTable(TestString) VALUES ('2');
    UPDATE TempTable SET TestString = TestString + 1 WHERE TestID=1 OR TestId=2;
    COMMIT;
    SELECT TestString FROM RealTable ORDER BY 1;
  
CREATE TABLE t19 AS SELECT 1, 2 AS '', 3;
  SELECT * FROM t19;

CREATE TABLE t19b AS SELECT 4 AS '', 5 AS '',  6 AS '';
  SELECT * FROM t19b;

CREATE TABLE t19c(x TEXT);
  CREATE TABLE t19d AS SELECT * FROM t19c UNION ALL SELECT 1234;
  SELECT x, typeof(x) FROM t19d;

CREATE TABLE t0(x INTEGER DEFAULT(0==0) NOT NULL);
  REPLACE INTO t0(x) VALUES('');
  SELECT rowid, quote(x) FROM t0;

select''like''like''like#0;

VALUES(0,0x0MATCH#0;

SELECT ''+3 FROM (SELECT ''+5);

CREATE TABLE t1(x);
  PRAGMA writable_schema=ON;
  UPDATE sqlite_master SET sql='CREATE table t(d CHECK(T(#0)';
  BEGIN;
  CREATE TABLE t2(y);
  ROLLBACK;
  DROP TABLE IF EXISTS t3;

CREATE TABLE t1(x UNIQUE);
  PRAGMA writable_schema=ON;
  UPDATE sqlite_master SET sql='CREATE TABLE IF not EXISTS t(c)';
  BEGIN;
  CREATE TABLE t2(x);
  ROLLBACK;
  DROP TABLE F;

CREATE TABLE t1(x UNIQUE);
  PRAGMA writable_schema=ON;
  UPDATE sqlite_master SET sql='CREATE table y(a TEXT, a TEXT)';
  BEGIN;
  CREATE TABLE t2(y);
  ROLLBACK;
  DROP TABLE IF EXISTS t;

SELECT-1 UNION  SELECT 5 UNION SELECT 0 UNION SElECT*from(SELECT-5) UNION SELECT*from(SELECT-0) UNION  SELECT:SELECT-0 UNION SELECT-1 UNION SELECT 1 UNION SELECT 1 ORDER BY S  in(WITH K AS(WITH K AS(select'CREINDERcharREADEVIRTUL5TABLECONFLICT !1 USIN'' MFtOR(b38q,eWITH K AS(selectCREATe TABLE t0(a,b,c,d,e, PRIMARY KEY(a,b,c,d,c,a,b,b,c,d,c,a,b,c,e,c,d,c,a,b,b,c,d,c,a,b,c,e,d,d,c,a,b,b,c,d,c,d,c,a,b,c,e,c,d,c,a,b,b,c,d,c,d,c,a,b,c,e,d,d,c,a,b,b,c,c,a,b,b,c,d,c,d,c,a,b,c,e,d,d,c,a,b,b,c,d,c,d,c,c,d,c,a,b,c,e,d,d,c,a,b,b,c,d,c,d,c,a,b,c,e,c,d,c,a,b,b,c,a,b,b,c,d,c,a,c,d,c,d,c,e,d,d,c,a,b,b,c,c,a,b,b,E,d,c,d,c,b,c,d,c,d,c,c,d,c,a,b,c,e,d,d,c,a,b,b,c,d,c,d,c,a,b,c,e,c,d,c,a,b,b,c,a,b,c,e,d,d,c,a,b,b,c,d,d,c,a,b,c,e,d,c,d,c,a,b,c,e,c,d,c,a,b,b,c,d,c,a,b,c,e,d,d,c,a,b,b,b,c,e,d,d,c,a,b,b,c,c,a,b,b,c,d,c,d,c,a,b,c,e,d,d,c,a,b,b,c,d,c,d,c,c,d,c,a,b,c,e,d,d,c,a,b,b,c,d,c,d,c,a,b,c,e,c,d,c,a,b,b,c,d,c,d,c,e,d,d,c,a,b,b,c,c,a,b,b,E,d,c,d,c,b,c,d,c,d,c,c,d,c,a,b,c,e,d,d,c,a,b,b,c,d,c,d,c,a,b,c,e,c,d'CEIl,k'',ab, g, a,b,o11b, i'nEX/charREDE IVT LR!VABLt5SG',N  ,N in rement,l_vacuum,M&U,'te3(''5l' a,bB,b,l*e)SELECT:SELECT, *,*,*from(( SELECT
$group,:conc ap0,1)fro,(select"",:PBAG,c,a,b,b,c,a,b,c,e,d,d,c,a,b,b,c,d,d,c,a,b,c,e,d,c,d,c,a,b,c,e,c,d,c,d,c,a,b,b,c,d,c,a,b,c,e,c,d,c,a,b,b,c,d,c,a,b,c,e,d,d,c,a,b,b,c,d,c,d,c,a,b,c,e,c,d,c,a,b,b,c,d,c,d,c,a,b,c,e,d,d,c,a,b,b,c,c,a,b,b,c,d,c,d,c,a,b,c,e,d,d,c,a,b,b,c,d,c,d,c,c,d,c,a,b,c,e,d,d,c,a,b,b,c,d,c,d,c,a,b,c,e,d,c,d,c,a,b,c,e,c,d,c,a,b,b,c,d,c,a,b,c,e,d,d,c,a,b,b,b,c,e,d,d,c,a,b,b,c,c,a,b,b,c,d,c,d,c,a,b,c,e,d,d,c,a,b,b,c,d,c,d,c,c,d,c,a,b,c,e,d,d,c,a,b,b,c,d,c,d,c,a,b,c,e,c,d,c,a,b,b,c,d,c,d,c,e,d,d,c,a,b,b,c,c,a,b,b,E,d,c,d,c,b,c,d,c,d,c,c,d,c,a,b,c,e,d,d,c,a,b,b,c,d,c,d,c,a,b,c,e,c,d,c,a,b,b,c,a,b,c,e,d,d,c,a,b,b,c,d,d,c,a,b,c,e,d,c,d,c,a,b,c,e,c,d,c,d,c,a,b,b,c,d,c,a,b,c,e,c,d,c,a,b,b,c,d,c,a,b,c,e,d,d,c,a,b,b,c,d,c,d,c,a,b,c,e,c,d,c,a,b,b,c,d,c,d,c,a,b,c,e,d,d,c,a,b,b,c,c,a,b,b,c,d,c,d,c,a,b,c,e,d,d,c,a,b,b,c,d,c,d,c,c,d,c,a,b,c,e,d,d,c,a,b,b,c,d,c,d,c,a,b,c,e,c,d,c,a,b,b,c,d,c,d,c,e,d,d,c,a,b,b,c,c,a,b,b,E,d,c,d,c,b,c,d,c,d,c,c,d,c,a,b,c,e,d,d,c,a,b,b,c,d,c,d,c,a,b,c,e,c,d,c,a,b,b,c,a,b,c,e,d,d,c,a,b,b,c,d,d,c,a,b,c,e,d,c,d,c,a,b,c,e,c,d,c,a,b,b,c,c,d,c,c,a,a,b,d,d,c,a,b,b,c,d,c,a,b,e,e,d,b,c,d,c,a,b,b,c,d,c,a,b,c,e,c,d,c,a,b,b,c,d,c,a,b,c,e,d,d,c,a,b,b,c,d,c,d,c,a,b,c,e,c,d,c,a,b,b,c,d,c,d,c,a,b,c,e,d,d,c,a,b,b,c,c,a,b,b,c,d,c,d,c,a,b,c,e,d,d,c,a,b,b,c,d,c,d,c,c,d,c,a,b,c,e,d,d,c,a,b,b,c,d,c,d,c,a,b,c,e,c,d,c,a,b,b,c,d, foreign_keysc,d,c,e,d,d,c,a,b,b,c,c,a,b,b,E,d,c,d,c,b,c,d,c,d,c,c,d,c,a,b,c,e,d,d,c,a,b,b,c,d,c,d,c,a,a,b,d,d,c,a,b,b,c,d,c,a,b,e,e,d,b,c,d,c,a,b,b,c,d,c,a,b,c,e,c,d,c,a,b,b,c,d,c,a,b,c,e,d,d,c,a,b,b,c,d,c,d,c,a,b,c,e,c,d,c,a,b,b,c,d,c,d,c,a,b,c,d,c,a,b,c,e,c,d,c,a,b,b,c,d,c,d,c,e,d,d,c,a,b,b,c,c,a,d,c,a,b,c,e,d,d,c,a,b,b,c,d,c,d,c,a,b,c,e,c,d,c,a,b,b,c,d,c,d,c,a,b,c,d,c,a,b,c,e,c,d,c,a,b,b,c,d,c,d,c,e,d,d,c,a,b,b,c,c,a,b,b,E,d,c,d,c,b,c,d,c,d,c,c,d,c,a,b,c,e,d,d,c,a,b,b,c,d,c,d,c,a,b,c,e,c,d,c,a,b,b,c,a,b,c,e,d,d,c,a,b,b,c,d,d,c,a,b,c,e,d,c,d,c,a,b,c,e,c,d,c,a,b,b,c,c,d,c,a,b,d,d,c,a,a,b,d,d,c,a,b,b,c,d,c,a,b,e,e,d,b,c,d,c,a,b,b,c,d,c,a,b,c,e,c,d,c,a,b,b,c,d,c,a,b,c,e,d,d,c,a,b,b,c,d,c,d,c,a,b,c,e,c,d,c,a,b,b,c,d,c,d,c,a,b,c,e,d,d,c,a,b,b,c,c,a,b,b,c,d,c,d,c,a,b,c,e,d,d,c,a,b,b,c,d,c,d,c,c,d,c,a,b,c,e,d,d,c,a,b,b,c,d,c,d,c,a,b,c,e,c,d,c,a,b,b,c,d,c,d,c,e,d,d,c,a,b,b,c,c,a,b,b,E,d,c,d,c,b,c,d,c,d,c,c,d,c,a,b,c,e,d,d,c,a,b,b,c,d,c,d,c,a,a,b,d,d,c,a,b,b,c,d,c,a,b,e,e,d,b,c,d,c,a,b,b,c,d,c,a,b,c,e,c,d,c,a,b,b,c,d,c,a,b,c,e,d,d,c,a,b,b,c,d,c,d,c,a,b,c,e,c,d,c,a,b,b,c,d,c,d,c,a,b,c,e,d,d,c,a,b,b,c,c,a,b,b,c,d,c,d,c,a,b,c,e,d,d,c,a,b,b,c,d,c,d,c,c,d,c,a,b,c,e,d,d,c,a,b,b,c,d,c,d,c,a,b,c,e,c,d,c,a,b,b,c,d,c,d,c,e,d,d,c,a,b,b,c,c,a,b,b,E,d,c,d,c,b,c,d,c,d,c,c,d,c,a,b,c,e,d,d,c,a,b,b,c,d,c,d,c,a,b,c,e,c,d,c,a,b,b,c,a,bb,b,E,d,c,d,c,b,c,d,c,d,c,c,d,c,a,b,c,e,d,d,c,a,b,b,c,d,c,d,c,a,b,c,e,c,d,c,a,b,b,c,a,b,c,e,d,d,c,a,b,b,c,d,d,c,a,b,c,e,d,c,d,c,a,b,c,e,c,d,c,a,b,b,c,c,d,c,a,b,d,d,c,a,a,b,d,d,c,a,b,b,c,d,c,a,b,e,e,d,b,c,d,c,a,b,b,c,d,c,a,b,c,e,c,d,c,a,b,b,c,d,c,a,b,c,e,d,d,c,a,b,b,c,d,c,d,c,a,b,c,e,c,d,c,a,b,b,c,d,MAato_aecSELEC,+?b," "O,"i","a",""b  ,5 ))KEY)SELECT*FROM((k()reaC,k,K) eA,k '' )t ,K  M);

DROP TABLE IF EXISTS abc;
  CREATE TABLE abc(a, b, c);
  SELECT randomblob(min(max(coalesce(EXISTS (SELECT 1 FROM ( SELECT (SELECT 2147483647) NOT IN (SELECT 2147483649 UNION ALL SELECT DISTINCT -1) IN (SELECT 2147483649), 'fault', (SELECT ALL -1 INTERSECT SELECT 'experiments') IN (SELECT ALL 56.1 ORDER BY 'experiments' DESC) FROM (SELECT DISTINCT 2147483648, 'hardware' UNION ALL SELECT -2147483648, 'experiments' ORDER BY 2147483648 LIMIT 1 OFFSET 123456789.1234567899) GROUP BY (SELECT ALL 0 INTERSECT SELECT 'in') IN (SELECT DISTINCT 'experiments' ORDER BY zeroblob(1000) LIMIT 56.1 OFFSET -456) HAVING EXISTS (SELECT 'fault' EXCEPT    SELECT DISTINCT 56.1) UNION SELECT 'The', 'The', 2147483649 UNION ALL SELECT DISTINCT 'hardware', 'first', 'experiments' ORDER BY 'hardware' LIMIT 123456789.1234567899 OFFSET -2147483647)) NOT IN (SELECT (SELECT DISTINCT (SELECT 'The') FROM abc ORDER BY EXISTS (SELECT -1 INTERSECT SELECT ALL NULL) ASC) IN (SELECT DISTINCT EXISTS (SELECT ALL 123456789.1234567899 ORDER BY 1 ASC, NULL DESC) FROM sqlite_master INTERSECT SELECT 456)), (SELECT ALL 'injection' UNION ALL SELECT ALL (SELECT DISTINCT 'first' UNION     SELECT DISTINCT 'The') FROM (SELECT 456, 'in', 2147483649))),1), 500)), 'first', EXISTS (SELECT DISTINCT 456 FROM abc ORDER BY 'experiments' DESC) FROM abc;

CREATE TABLE dup1(a,b,c);
  INSERT INTO dup1(a,b,c,a,b,c) VALUES(1,2,3,4,5,6);
  SELECT a,b,c FROM dup1;

UPDATE dup1 SET a=7, b=8, c=9, a=10, b=11, c=12;
  SELECT a,b,c FROM dup1;

CREATE TABLE t1(x);
  CREATE UNIQUE INDEX t1x ON t1(x) WHERE x=1;
  INSERT OR ABORT INTO t1 DEFAULT VALUES;
  UPDATE OR REPLACE t1 SET x = 1;
  PRAGMA integrity_check;
  SELECT * FROM t1;

