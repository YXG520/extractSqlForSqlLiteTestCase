SELECT * FROM sqlite_master
CREATE TABLE abc(a, b, c);
  
SELECT * FROM sqlite_master
DROP TABLE abc;
  
SELECT * FROM sqlite_master
CREATE VIEW v1 AS SELECT * FROM sqlite_master;
    
SELECT * FROM sqlite_master
DROP VIEW v1;
    
CREATE TABLE abc(a, b, c);
    
SELECT * FROM sqlite_master
CREATE TRIGGER abc_trig AFTER INSERT ON abc BEGIN
        SELECT 1, 2, 3;
      END;
    
SELECT * FROM sqlite_master
DROP TRIGGER abc_trig;
    
CREATE TABLE abc(a, b, c);
  
SELECT * FROM sqlite_master
CREATE INDEX abc_index ON abc(a);
  
SELECT * FROM sqlite_master
DROP INDEX abc_index;
  
SELECT * FROM abc;
ATTACH 'test2.db' AS aux;
    
DETACH aux;
    
SELECT * FROM abc;
SELECT * FROM abc;
SELECT * FROM sqlite_master
SELECT * FROM sqlite_master
DROP TABLE abc;
  
SELECT * FROM abc;
  
CREATE TABLE abc(a, b, c);

CREATE VIEW abcview AS SELECT * FROM abc;
    
DROP VIEW abcview;
    
SELECT * FROM abcview;
    
INSERT INTO abc VALUES(1, 2, 3);
  
SELECT * FROM abc
CREATE TABLE t2(a, b, c);
  
SELECT * FROM abc
  
SELECT * FROM abc
SELECT * FROM abc
BEGIN;
    CREATE TABLE t3(a, b, c);
  
ROLLBACK;
    CREATE TABLE t4(a, b, c);
  
return SQLITE_DENY
