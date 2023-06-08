finish_test
  return

set ::using_proxy $value
  
BEGIN;
    CREATE TABLE t1(a, b);
  
INSERT INTO t1 VALUES('a', 'b');
    SELECT * FROM t1;
  
BEGIN;
    SELECT * FROM t1;
  
SELECT * FROM t1; 
SELECT * FROM t1;
    ROLLBACK;
  
SELECT * FROM t1; 
BEGIN EXCLUSIVE
finish_test
  return

CREATE TABLE t1(a, b);
    BEGIN;
    INSERT INTO t1 VALUES(1, 2);
  
SELECT * FROM t1 
SELECT * FROM t1 
SELECT * FROM t1 
SELECT * FROM t1
SELECT * FROM t1 
SELECT * FROM t1 
PRAGMA mmap_size = 0 
BEGIN;
    INSERT INTO t1 VALUES(3, 4);
  
SELECT * FROM t1 
SELECT * FROM t1; 
BEGIN;
    SELECT * FROM t1;
  
SELECT * FROM t1
SELECT * FROM t1
