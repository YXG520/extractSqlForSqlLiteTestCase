CREATE TABLE t1(a, b);
      PRAGMA journal_mode = wal;
      INSERT INTO t1 VALUES('A', 'B');
    
SELECT * FROM t1 
BEGIN;
        INSERT INTO t1 VALUES('C', 'D');
    
BEGIN EXCLUSIVE 
COMMIT
    
PRAGMA auto_vacuum = off;
      PRAGMA journal_mode = wal;
      CREATE TABLE t1(a, b);
      INSERT INTO t1 VALUES(1, 2);
    
BEGIN;
        SELECT * FROM t1;
    
INSERT INTO t1 VALUES(3, 4) 
CREATE TABLE t1(x);
      BEGIN EXCLUSIVE;
        INSERT INTO t1 VALUES('x');
    
SELECT * FROM t1 
SELECT * FROM t1 
