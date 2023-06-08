CREATE TABLE t1(a INTEGER PRIMARY KEY, b);
      INSERT INTO t1 VALUES(1,2);
      SELECT * FROM t1;
    
PRAGMA journal_mode=WAL;
    INSERT INTO t1 VALUES(3,4);
    SELECT * FROM t1 ORDER BY a;
    
SELECT * FROM t1 ORDER BY a;
    
PRAGMA journal_mode = WAL;
  CREATE TABLE t1(a PRIMARY KEY, b TEXT);
  INSERT INTO t1 VALUES(1, 'one');
  INSERT INTO t1 VALUES(2, 'two');
  BEGIN;
    SELECT * FROM t1;

SELECT * FROM t1;
    INSERT INTO t1 VALUES(3, 'three');
  
INSERT INTO t1 VALUES('x', 'x') 

SELECT * FROM t1;
  COMMIT;
  INSERT INTO t1 VALUES('x', 'x') 

SELECT count(*) FROM t1 
INSERT INTO t1 VALUES('x', 'x') 
INSERT INTO t1 VALUES('y', 'y') 
SELECT count(*) FROM t1 
DELETE FROM t1 
DELETE FROM t1 
BEGIN IMMEDIATE 
COMMIT 
BEGIN IMMEDIATE 
COMMIT 
PRAGMA journal_mode = WAL;
  CREATE TABLE ab(a PRIMARY KEY, b);

BEGIN;
      INSERT INTO ab VALUES(1, 2);
  
BEGIN;
      INSERT INTO ab VALUES(3, 4);
  
PRAGMA page_size = 1024;
  PRAGMA journal_mode = wal;
  CREATE TABLE t1(a, b);
  CREATE TABLE t2(a, b);
  PRAGMA wal_checkpoint = truncate;

INSERT INTO t1 VALUES(1, 2) 
BEGIN;
    INSERT INTO t2 VALUES(3, 4);
  
PRAGMA wal_checkpoint = passive 
COMMIT 
SELECT * FROM t1 
SELECT * FROM t2 
PRAGMA journal_mode = wal;
  CREATE TABLE t1(x, y);
  INSERT INTO t1 VALUES(1, 2);
  INSERT INTO t1 VALUES(3, 4);

BEGIN EXCLUSIVE
