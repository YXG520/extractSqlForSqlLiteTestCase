CREATE TABLE t1(a, b);
      INSERT INTO t1 VALUES('hello', 'world');
    
hello world
SELECT * FROM t1 
SELECT * FROM t1 
CREATE TABLE t1(a, b);
      INSERT INTO t1 VALUES('hello', 'world');
    
hello world
SELECT * FROM t1 
PRAGMA auto_vacuum = 0;
      PRAGMA journal_mode = WAL;
      PRAGMA synchronous = FULL;
      CREATE TABLE t1(a, b);
      INSERT INTO t1 VALUES(1, 2);
    
SELECT * FROM t1; 
SELECT * FROM t1; 
BEGIN;
          SELECT * FROM t1;
      
PRAGMA wal_checkpoint; INSERT INTO t1 VALUES(3, 4); 
SELECT * FROM t1; 
SELECT * FROM t1; 
COMMIT; SELECT * FROM t1; 
PRAGMA wal_checkpoint; 
