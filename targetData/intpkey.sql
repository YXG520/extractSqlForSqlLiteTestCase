CREATE TABLE t1(a TEXT PRIMARY KEY, b, c);
  
SELECT name FROM sqlite_master
    WHERE type='index' AND tbl_name='t1';
  
DROP TABLE t1;
    CREATE TABLE t1(a INTEGER PRIMARY KEY, b, c);
    SELECT name FROM sqlite_master
      WHERE type='index' AND tbl_name='t1';
  
INSERT INTO t1 VALUES(5,'hello','world');
  
SELECT * FROM t1;
  
SELECT rowid, * FROM t1;
  
INSERT INTO t1 VALUES(5,'second','entry');
  
SELECT rowid, * FROM t1;
  
INSERT INTO t1 VALUES(6,'second','entry');
  
SELECT rowid, * FROM t1;
  
INSERT INTO t1(b,c) VALUES('one','two');
    SELECT b FROM t1 ORDER BY b;
  
UPDATE t1 SET a=4 WHERE b='one';
    SELECT * FROM t1;
  
SELECT * FROM t1 WHERE a==4;
  
EXPLAIN QUERY PLAN
    SELECT * FROM t1 WHERE a==4;
  
INSERT INTO t1 VALUES('x','y','z');
  
INSERT INTO t1 VALUES('','y','z');
  
INSERT INTO t1 VALUES(3.4,'y','z');
  
INSERT INTO t1 VALUES(-3,'y','z');
  
SELECT * FROM t1
CREATE INDEX i1 ON t1(b);
    SELECT * FROM t1 WHERE b=='y'
  
SELECT * FROM t1 WHERE b=='y' AND rowid<0
  
SELECT * FROM t1 WHERE b=='y' AND rowid<0 AND rowid>=-20
  
SELECT * FROM t1 WHERE b>='y'
  
SELECT * FROM t1 WHERE b>='y' AND rowid<10
  
UPDATE t1 SET a=8 WHERE b=='y';
    SELECT * FROM t1 WHERE b=='y';
  
SELECT rowid, * FROM t1;
  
SELECT rowid, * FROM t1 WHERE b<'second'
  
SELECT rowid, * FROM t1 WHERE 'second'>b
  
SELECT rowid, * FROM t1 WHERE 8>rowid AND 'second'>b
  
SELECT rowid, * FROM t1 WHERE 8>rowid AND 'second'>b AND 0<rowid
  
SELECT rowid, * FROM t1 WHERE b>'a'
  
DELETE FROM t1 WHERE rowid=4;
    SELECT * FROM t1 WHERE b>'a';
  
UPDATE t1 SET a=-4 WHERE rowid=8;
    SELECT * FROM t1 WHERE b>'a';
  
SELECT * FROM t1
  
set ::sqlite_search_count 0
  return [concat [execsql $sql] $::sqlite_search_count]

CREATE INDEX i2 ON t1(a);
  
CREATE INDEX i3 ON t1(c,a);
  
INSERT INTO t1 VALUES(11,'hello','world')
INSERT INTO t1 VALUES(0,'zero','entry');
  
SELECT rowid, a FROM t1 ORDER BY rowid
  
BEGIN;
    INSERT INTO t1 VALUES(20,'b-20','c-20');
    INSERT INTO t1 VALUES(21,'b-21','c-21');
    INSERT INTO t1 VALUES(22,'b-22','c-22');
    COMMIT;
    SELECT * FROM t1 WHERE a>=20;
  
SELECT * FROM t1 WHERE b=='hello'
  
DELETE FROM t1 WHERE b='b-21';
    SELECT * FROM t1 WHERE b=='b-21';
  
SELECT * FROM t1 WHERE a>=20
  
INSERT INTO t1(c,b,a) VALUES('row','new',30);
    SELECT * FROM t1 WHERE rowid>=30;
  
SELECT * FROM t1 WHERE rowid>20;
  
CREATE TABLE t2(x INTEGER PRIMARY KEY, y, z);
    INSERT INTO t2 SELECT * FROM t1;
    SELECT rowid FROM t2;
  
SELECT x FROM t2;
  
UPDATE t1 SET c='www' WHERE c='world';
    SELECT rowid, a, c FROM t1 WHERE c=='www';
  
DROP TABLE t2;
    CREATE TABLE t2(x INTEGER PRIMARY KEY, y, z);
    INSERT INTO t2 VALUES(NULL, 1, 2);
    SELECT * from t2;
  
INSERT INTO t2 VALUES(NULL, 2, 3);
    SELECT * from t2 WHERE x=2;
  
INSERT INTO t2 SELECT NULL, z, y FROM t2;
    SELECT * FROM t2;
  
SELECT b FROM t1 WHERE a=2.0+3.0;
  
SELECT b FROM t1 WHERE a=2.0+3.5;
  
SELECT * FROM t1 WHERE a=1;
  
INSERT INTO t1 VALUES('1.0',2,3);
    SELECT * FROM t1 WHERE a=1;
  
INSERT INTO t1 VALUES('1.5',3,4);
  
INSERT INTO t1 VALUES(x'123456',3,4);
    
INSERT INTO t1 VALUES('+1234567890',3,4);
  
CREATE TABLE t3(a INTEGER PRIMARY KEY, b INTEGER, c TEXT);
    INSERT INTO t3 VALUES(1, 1, 'one');
    INSERT INTO t3 VALUES(2, 2, '2');
    INSERT INTO t3 VALUES(3, 3, 3);
  
SELECT * FROM t3 WHERE a>2;
  
SELECT * FROM t3 WHERE a>'2';
  
SELECT * FROM t3 WHERE a<'2';
  
SELECT * FROM t3 WHERE a<c;
  
SELECT * FROM t3 WHERE a=c;
  
INSERT INTO t1 VALUES(2147483647, 'big-1', 123);
    SELECT * FROM t1 WHERE a>2147483648;
  
INSERT INTO t1 VALUES(NULL, 'big-2', 234);
    SELECT b FROM t1 WHERE a>=2147483648;
  
SELECT b FROM t1 WHERE a>2147483648;
  
SELECT b FROM t1 WHERE a>=2147483647;
  
SELECT b FROM t1 WHERE a<2147483648;
  
SELECT b FROM t1 WHERE a<12345678901;
  
SELECT b FROM t1 WHERE a>12345678901;
  
CREATE TABLE t16a(id "INTEGER" PRIMARY KEY AUTOINCREMENT, b [TEXT], c `INT`);

PRAGMA table_info=t16a;

CREATE TABLE t17(x INTEGER PRIMARY KEY, y TEXT);
  INSERT INTO t17(x,y) VALUES(123,'elephant'),(248,'giraffe');
  CREATE INDEX t17x ON t17(x);
  DELETE FROM t17 WHERE x=99 OR x<130;
  SELECT * FROM t17;

DROP INDEX t17x;
  DELETE FROM t17;
  INSERT INTO t17(x,y) VALUES(123,'elephant'),(248,'giraffe');
  CREATE UNIQUE INDEX t17x ON t17(abs(x));
  DELETE FROM t17 WHERE abs(x) IS NULL OR abs(x)<130;
  SELECT * FROM t17;

DELETE FROM t17;
  INSERT INTO t17(x,y) VALUES(123,'elephant'),(248,'giraffe');
  UPDATE t17 SET y='ostrich' WHERE abs(x)=248;
  SELECT * FROM t17 ORDER BY +x;

