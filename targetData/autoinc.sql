SELECT name FROM sqlite_master WHERE type='table';
  
CREATE TABLE t1(x INTEGER PRIMARY KEY AUTOINCREMENT, y);
    SELECT name FROM sqlite_master WHERE type='table';
  
SELECT * FROM sqlite_sequence;
  
CREATE INDEX seqidx ON sqlite_sequence(name)
  
SELECT * FROM sqlite_sequence;
  
DROP TABLE sqlite_sequence
SELECT name FROM sqlite_master WHERE type='table'
SELECT * FROM sqlite_sequence
  
INSERT INTO t1 VALUES(12,34);
    SELECT * FROM sqlite_sequence;
  
INSERT INTO t1 VALUES(1,23);
    SELECT * FROM sqlite_sequence;
  
INSERT INTO t1 VALUES(123,456);
    SELECT * FROM sqlite_sequence;
  
INSERT INTO t1 VALUES(NULL,567);
    SELECT * FROM sqlite_sequence;
  
DELETE FROM t1 WHERE y=567;
    SELECT * FROM sqlite_sequence;
  
INSERT INTO t1 VALUES(NULL,567);
    SELECT * FROM sqlite_sequence;
  
DELETE FROM t1;
    SELECT * FROM sqlite_sequence;
  
INSERT INTO t1 VALUES(12,34);
    SELECT * FROM sqlite_sequence;
  
INSERT INTO t1 VALUES(125,456);
    SELECT * FROM sqlite_sequence;
  
INSERT INTO t1 VALUES(-1234567,-1);
    SELECT * FROM sqlite_sequence;
  
INSERT INTO t1 VALUES(234,5678);
    SELECT * FROM sqlite_sequence;
  
DELETE FROM t1;
    INSERT INTO t1 VALUES(NULL,1);
    SELECT * FROM sqlite_sequence;
  
SELECT * FROM t1;
  
UPDATE sqlite_sequence SET seq=1234 WHERE name='t1';
    INSERT INTO t1 VALUES(NULL,2);
    SELECT * FROM t1;
  
SELECT * FROM sqlite_sequence;
  
UPDATE sqlite_sequence SET seq=NULL WHERE name='t1';
    INSERT INTO t1 VALUES(NULL,3);
    SELECT * FROM t1;
  
SELECT * FROM sqlite_sequence;
  
UPDATE sqlite_sequence SET seq='a-string' WHERE name='t1';
    INSERT INTO t1 VALUES(NULL,4);
    SELECT * FROM t1;
  
SELECT * FROM sqlite_sequence;
  
DELETE FROM sqlite_sequence WHERE name='t1';
    INSERT INTO t1 VALUES(NULL,5);
    SELECT * FROM t1;
  
SELECT * FROM sqlite_sequence;
  
UPDATE sqlite_sequence SET seq='-12345678901234567890'
      WHERE name='t1';
    INSERT INTO t1 VALUES(NULL,6);
    SELECT * FROM t1;
  
SELECT * FROM sqlite_sequence;
  
DELETE FROM t1 WHERE y>=3;
    INSERT INTO t1 SELECT NULL, y+2 FROM t1;
    SELECT * FROM t1;
  
SELECT * FROM sqlite_sequence
  
CREATE TEMP TABLE t2 AS SELECT y FROM t1;
    
INSERT INTO t1 SELECT NULL, y+4 FROM t2;
      SELECT * FROM t1;
    
SELECT * FROM sqlite_sequence
    
DELETE FROM t1;
      INSERT INTO t1 SELECT NULL, y FROM t2;
      SELECT * FROM t1;
    
SELECT * FROM sqlite_sequence
    
DROP TABLE t2;
  
CREATE TABLE t2(d, e INTEGER PRIMARY KEY AUTOINCREMENT, f);
    INSERT INTO t2(d) VALUES(1);
    SELECT * FROM sqlite_sequence;
  
INSERT INTO t2(d) VALUES(2);
    SELECT * FROM sqlite_sequence;
  
INSERT INTO t1(x) VALUES(10000);
    SELECT * FROM sqlite_sequence;
  
CREATE TABLE t3(g INTEGER PRIMARY KEY AUTOINCREMENT, h);
    INSERT INTO t3(h) VALUES(1);
    SELECT * FROM sqlite_sequence;
  
INSERT INTO t2(d,e) VALUES(3,100);
    SELECT * FROM sqlite_sequence;
  
SELECT name FROM sqlite_sequence
DROP TABLE t1;
    SELECT name FROM sqlite_sequence;
  
DROP TABLE t3;
    SELECT name FROM sqlite_sequence;
  
DROP TABLE t2;
    SELECT name FROM sqlite_sequence;
  
SELECT 1, name FROM sqlite_master WHERE type='table';
      SELECT 2, name FROM temp.sqlite_master WHERE type='table';
    
CREATE TABLE t1(x INTEGER PRIMARY KEY AUTOINCREMENT, y);
      CREATE TEMP TABLE t3(a INTEGER PRIMARY KEY AUTOINCREMENT, b);
      SELECT 1, name FROM sqlite_master WHERE type='table';
      SELECT 2, name FROM sqlite_temp_master WHERE type='table';
    
SELECT 1, * FROM main.sqlite_sequence;
      SELECT 2, * FROM temp.sqlite_sequence;
    
INSERT INTO t1 VALUES(10,1);
      INSERT INTO t3 VALUES(20,2);
      INSERT INTO t1 VALUES(NULL,3);
      INSERT INTO t3 VALUES(NULL,4);
    
SELECT * FROM t1 UNION ALL SELECT * FROM t3;
    
SELECT 1, * FROM main.sqlite_sequence;
      SELECT 2, * FROM temp.sqlite_sequence;
    
INSERT INTO t1 SELECT * FROM t3;
      SELECT 1, * FROM main.sqlite_sequence;
      SELECT 2, * FROM temp.sqlite_sequence;
    
INSERT INTO t3 SELECT x+100, y  FROM t1;
      SELECT 1, * FROM main.sqlite_sequence;
      SELECT 2, * FROM temp.sqlite_sequence;
    
DROP TABLE t3;
      SELECT 1, * FROM main.sqlite_sequence;
      SELECT 2, * FROM temp.sqlite_sequence;
    
CREATE TEMP TABLE t2(p INTEGER PRIMARY KEY AUTOINCREMENT, q);
      INSERT INTO t2 SELECT * FROM t1;
      DROP TABLE t1;
      SELECT 1, * FROM main.sqlite_sequence;
      SELECT 2, * FROM temp.sqlite_sequence;
    
DROP TABLE t2;
      SELECT 1, * FROM main.sqlite_sequence;
      SELECT 2, * FROM temp.sqlite_sequence;
    
CREATE TABLE t4(m INTEGER PRIMARY KEY AUTOINCREMENT, n);
      CREATE TABLE t5(o, p INTEGER PRIMARY KEY AUTOINCREMENT);
    
ATTACH 'test2.db' as aux;
      SELECT 1, * FROM main.sqlite_sequence;
      SELECT 2, * FROM temp.sqlite_sequence;
      SELECT 3, * FROM aux.sqlite_sequence;
    
INSERT INTO t4 VALUES(NULL,1);
      SELECT 1, * FROM main.sqlite_sequence;
      SELECT 2, * FROM temp.sqlite_sequence;
      SELECT 3, * FROM aux.sqlite_sequence;
    
INSERT INTO t5 VALUES(100,200);
      SELECT * FROM sqlite_sequence
    
SELECT 1, * FROM main.sqlite_sequence;
      SELECT 2, * FROM temp.sqlite_sequence;
      SELECT 3, * FROM aux.sqlite_sequence;
    
CREATE TABLE t6(v INTEGER PRIMARY KEY AUTOINCREMENT, w);
      INSERT INTO t6 VALUES(2147483647,1);
      SELECT seq FROM main.sqlite_sequence WHERE name='t6';
    
CREATE TABLE t6(v INTEGER PRIMARY KEY AUTOINCREMENT, w);
      INSERT INTO t6 VALUES(9223372036854775807,1);
      SELECT seq FROM main.sqlite_sequence WHERE name='t6';
    
INSERT INTO t6 VALUES(NULL,1);
  
CREATE TABLE t7(x INTEGER, y REAL, PRIMARY KEY(x AUTOINCREMENT));
    INSERT INTO t7(y) VALUES(123);
    INSERT INTO t7(y) VALUES(234);
    DELETE FROM t7;
    INSERT INTO t7(y) VALUES(345);
    SELECT * FROM t7;
  
CREATE TABLE t8(x TEXT PRIMARY KEY AUTOINCREMENT);
  
CREATE TABLE t1(
       x INTEGER PRIMARY KEY AUTOINCREMENT
     )
  
CREATE TABLE t1(
       x INTEGER PRIMARY KEY AUTOINCREMENT
     )
  
INSERT INTO t1 VALUES(NULL);
    SELECT * FROM t1;
  
pragma recursive_triggers = off 
DELETE FROM sqlite_sequence;
  CREATE TABLE t10a(a INTEGER PRIMARY KEY AUTOINCREMENT, b UNIQUE);
  INSERT INTO t10a VALUES(888,9999);
  CREATE TABLE t10b(x INTEGER PRIMARY KEY AUTOINCREMENT, y UNIQUE);
  INSERT INTO t10b SELECT * FROM t10a;
  SELECT * FROM sqlite_sequence;

CREATE TABLE t11(a INTEGER PRIMARY KEY AUTOINCREMENT,b UNIQUE);
  INSERT INTO t11(a,b) VALUES(2,3),(5,6),(4,3),(1,2)
    ON CONFLICT(b) DO UPDATE SET a=a+1000;
  SELECT seq FROM sqlite_sequence WHERE name='t11';

CREATE TABLE t1(i INTEGER PRIMARY KEY AUTOINCREMENT, j);
  CREATE TABLE t2(i INTEGER PRIMARY KEY AUTOINCREMENT, j);
  CREATE TABLE t3(i INTEGER PRIMARY KEY AUTOINCREMENT, j);

  INSERT INTO t1 VALUES(NULL, 1);
  INSERT INTO t2 VALUES(NULL, 2);
  INSERT INTO t3 VALUES(NULL, 3);

  SELECT name FROM sqlite_sequence;

UPDATE sqlite_sequence SET name=NULL WHERE name='t2';
  INSERT INTO t3 VALUES(NULL, 4);
  DELETE FROM t3;
  INSERT INTO t3 VALUES(NULL, 5);
  SELECT * FROM t3;
