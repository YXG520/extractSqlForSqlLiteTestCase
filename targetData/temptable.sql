CREATE TABLE t1(a,b,c);
INSERT INTO t1 VALUES(1,2,3);
SELECT * FROM t1
SELECT name FROM sqlite_master
SELECT * FROM sqlite_master
SELECT * FROM t2
INSERT INTO t2 VALUES(8,9,0);
BEGIN TRANSACTION;
    CREATE TEMPORARY TABLE t2(x,y);
    INSERT INTO t2 VALUES(1,2);
    SELECT * FROM t2;
  
ROLLBACK
SELECT * FROM t2
BEGIN TRANSACTION;
    CREATE TEMPORARY TABLE t2(x,y);
    INSERT INTO t2 VALUES(1,2);
    SELECT * FROM t2;
  
COMMIT
SELECT * FROM t2
CREATE INDEX i2 ON t2(x);
    SELECT name FROM sqlite_master WHERE type='index';
  
SELECT y FROM t2 WHERE x=1;
  
DROP INDEX i2;
    SELECT y FROM t2 WHERE x=1;
  
CREATE INDEX i2 ON t2(x);
    DROP TABLE t2;
  
DROP INDEX i2
CREATE TEMP TABLE t2(x,y);
    INSERT INTO t2 VALUES(10,20);
    SELECT * FROM t2;
  
CREATE TABLE t2(x,y,z);
    INSERT INTO t2 VALUES(9,8,7);
    SELECT * FROM t2;
  
SELECT * FROM t2;
  
SELECT * FROM temp.t2;
  
SELECT * FROM main.t2;
  
#    SELECT name FROM main.sqlite_master WHERE type='table';
#  
SELECT name FROM main.sqlite_master WHERE type='table';
  
SELECT * FROM main.t2;
  
SELECT * FROM t2;
  
DROP TABLE t2;     -- should drop TEMP
    SELECT * FROM t2;  -- data should be from MAIN
  
SELECT * FROM t2;
  
DROP TABLE t2;
    SELECT * FROM t2;
  
CREATE TEMP TABLE t2(x unique,y);
    INSERT INTO t2 VALUES(1,2);
    SELECT * FROM t2;
  
CREATE TABLE t2(x unique, y);
    INSERT INTO t2 VALUES(3,4);
    SELECT * FROM t2;
  
SELECT * FROM t2;
  
#     SELECT name FROM sqlite_master WHERE type='table'
#   
SELECT name FROM sqlite_master WHERE type='table'
  
SELECT * FROM t2;
  
SELECT * FROM t2;
  
DROP TABLE t2;     -- drops TEMP.T2
    SELECT * FROM t2;  -- uses MAIN.T2
  
SELECT * FROM t2;
  
SELECT * FROM t2;
  
CREATE TEMP TABLE mask(a,b,c)
  
CREATE INDEX mask ON t2(x);
    SELECT * FROM t2;
  
#    SELECT * FROM t2;
#  
SELECT * FROM t2;
  
SELECT y FROM t2 WHERE x=3
  
SELECT y FROM t2 WHERE x=3
  
INSERT INTO t2 VALUES(1,2);
    SELECT y FROM t2 WHERE x=1;
  
SELECT y FROM t2 WHERE x=3
  
SELECT y FROM t2 WHERE x=1;
  
SELECT y FROM t2 WHERE x=3
  
CREATE TABLE t8(x);
    INSERT INTO t8 VALUES('xyzzy');
    SELECT * FROM t8;
  
SELECT * FROM t8;
  
CREATE TABLE t9(x,y);
  
CREATE TEMP TABLE t9(x,y);
  
INSERT INTO t9 VALUES(1,2);
    SELECT * FROM t9;
  
INSERT INTO t8 VALUES('hello');
    SELECT * FROM t8;
  
SELECT * FROM t8,t9;
  
SELECT * FROM t8,t9;
  
ATTACH 'test2.db' AS two;
      CREATE TEMP TABLE two.abc(x,y);
    
CREATE TEMP TABLE tbl2(a, b); 
CREATE TABLE tbl(a, b);
    INSERT INTO tbl VALUES(1, 2);
  
SELECT * FROM tbl
CREATE TEMP TABLE tbl(a, b); 
SELECT * FROM tbl
