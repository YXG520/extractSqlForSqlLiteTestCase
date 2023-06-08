CREATE TABLE collate3t1(c1 UNIQUE);
  
SELECT * FROM collate3t1 ORDER BY 1 collate garbage;
  
SELECT DISTINCT c1 COLLATE garbage FROM collate3t1;
  
CREATE TABLE collate3t2(c1 collate garbage);
  
CREATE INDEX collate3i1 ON collate3t1(c1 COLLATE garbage);
  
DROP TABLE collate3t1;

CREATE TABLE t1(a COLLATE caseless); 
    INSERT INTO t1 VALUES('Abc2');
    INSERT INTO t1 VALUES('abc1');
    INSERT INTO t1 VALUES('aBc3');
  
SELECT * FROM t1 ORDER BY a 
SELECT * FROM t1 ORDER BY a 
CREATE INDEX i1 ON t1(a) 
SELECT * FROM t1 ORDER BY a 
SELECT * FROM t1 ORDER BY a 
PRAGMA integrity_check 
REINDEX 
DROP TABLE t1;
    CREATE TABLE t1(a);
    CREATE INDEX i1 ON t1(a COLLATE caseless);
    INSERT INTO t1 VALUES('Abc2');
    INSERT INTO t1 VALUES('abc1');
    INSERT INTO t1 VALUES('aBc3');
    SELECT * FROM t1 ORDER BY a COLLATE caseless;
  
SELECT * FROM t1 ORDER BY a COLLATE caseless
REINDEX 
PRAGMA integrity_check 
REINDEX 
PRAGMA integrity_check 
PRAGMA integrity_check 
DROP TABLE t1 
CREATE TABLE collate3t1(c1 COLLATE string_compare, c2);
  
SELECT * FROM collate3t1 ORDER BY 1 COLLATE string_compare;
  
SELECT * FROM collate3t1 ORDER BY c1;
  
SELECT * FROM collate3t1 WHERE c1 = 'xxx';
  
CREATE TABLE collate3t2(c1 COLLATE string_compare);
  
CREATE INDEX collate3t1_i1 ON collate3t1(c1);
  
SELECT * FROM collate3t1;
  
SELECT count(*) FROM collate3t1 GROUP BY c1;
  
#     SELECT * FROM collate3t1 GROUP BY c1;
#   
SELECT * FROM collate3t1 GROUP BY c1;
  
SELECT DISTINCT c1 FROM collate3t1;
  
SELECT c1 FROM collate3t1 UNION SELECT c1 FROM collate3t1;
    
SELECT c1 FROM collate3t1 EXCEPT SELECT c1 FROM collate3t1;
    
SELECT c1 FROM collate3t1 INTERSECT SELECT c1 FROM collate3t1;
    
SELECT c1 FROM collate3t1 UNION ALL SELECT c1 FROM collate3t1;
    
SELECT 10 UNION ALL SELECT 20 ORDER BY 1 COLLATE string_compare;
    
SELECT 10 INTERSECT SELECT 20 ORDER BY 1 COLLATE string_compare;
    
SELECT 10 EXCEPT SELECT 20 ORDER BY 1 COLLATE string_compare;
    
SELECT 10 UNION SELECT 20 ORDER BY 1 COLLATE string_compare;
    
SELECT c1 FROM collate3t1 UNION ALL SELECT c1 FROM collate3t1 ORDER BY 1;
    
CREATE INDEX collate3t1_i1 ON collate3t1(c1);
    INSERT INTO collate3t1 VALUES('xxx', 'yyy');
  
INSERT INTO collate3t1 VALUES('xxx', 0);
  
UPDATE collate3t1 SET c1 = 'xxx';
  
UPDATE collate3t1 SET c2 = 'xxx';
  
DELETE FROM collate3t1 WHERE 1;
  
SELECT * FROM collate3t1;
  
DELETE FROM collate3t1;
  
PRAGMA integrity_check
    
SELECT * FROM collate3t1;
  
SELECT * FROM collate3t1 ORDER BY 1 COLLATE string_compare;
  
SELECT * FROM collate3t1 ORDER BY c1;
  
SELECT * FROM collate3t1 WHERE c1 = 'xxx';
  
CREATE TABLE collate3t2(c1 COLLATE string_compare);
  
CREATE INDEX collate3t1_i2 ON collate3t1(c1);
  
DROP TABLE collate3t1;
  
CREATE TABLE collate3t1(a, b);
    INSERT INTO collate3t1 VALUES('hello', NULL);
    CREATE INDEX collate3i1 ON collate3t1(a COLLATE user_defined);
  
SELECT * FROM collate3t1 ORDER BY a COLLATE user_defined;
  
SELECT * FROM collate3t1 ORDER BY a COLLATE user_defined;
  
DROP TABLE collate3t1;
  
CREATE TABLE collate3t1(a, b);
    INSERT INTO collate3t1 VALUES('2', NULL);
    INSERT INTO collate3t1 VALUES('101', NULL);
    INSERT INTO collate3t1 VALUES('12', NULL);
    CREATE VIEW collate3v1 AS SELECT * FROM collate3t1 
        ORDER BY 1 COLLATE user_defined;
    SELECT * FROM collate3v1;
  
SELECT * FROM collate3v1;
  
SELECT * FROM collate3v1;
  
DROP TABLE collate3t1;
  
CREATE TABLE collate3t1(a);
    INSERT INTO collate3t1 VALUES(10);
    SELECT a FROM collate3t1 ORDER BY 1 COLLATE unk;
  
SELECT a FROM collate3t1 ORDER BY 1 COLLATE unk;
  
SELECT a FROM collate3t1 ORDER BY 1 COLLATE unk;
  
SELECT a FROM collate3t1 ORDER BY 1 COLLATE unk;
  
DROP TABLE collate3t1;
    CREATE TABLE collate3t1(a COLLATE unk);
  
SELECT a FROM collate3t1 ORDER BY 1;
  
SELECT a FROM collate3t1 ORDER BY 1;
  
DROP TABLE collate3t1;
  
