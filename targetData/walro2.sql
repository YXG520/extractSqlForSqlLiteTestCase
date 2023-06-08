PRAGMA journal_mode = wal;
  CREATE TABLE t1(x);

CREATE TABLE t1(x, y);
          PRAGMA journal_mode = WAL;
          INSERT INTO t1 VALUES('a', 'b');
          INSERT INTO t1 VALUES('c', 'd');
        
SELECT * FROM t1 
SELECT * FROM t1 
SELECT * FROM t1 
SELECT * FROM t1 
INSERT INTO t1 VALUES('e', 'f');
          INSERT INTO t1 VALUES('g', 'h');
        
BEGIN;
          SELECT * FROM t1;
        
SELECT * FROM t1 
INSERT INTO t1 VALUES('i', 'j') 
COMMIT 
SELECT * FROM t1 
SELECT * FROM t1 
INSERT INTO t1 VALUES(1, 2) ; PRAGMA wal_checkpoint=truncate 
SELECT * FROM t1 
INSERT INTO t1 VALUES(3, 4);
          INSERT INTO t1 VALUES(5, 6);
          INSERT INTO t1 VALUES(7, 8);
          INSERT INTO t1 VALUES(9, 10);
        
SELECT * FROM t1 
PRAGMA wal_checkpoint; 
          DELETE FROM t1;
          INSERT INTO t1 VALUES('i', 'ii');
        
SELECT * FROM t1 
PRAGMA journal_mode = wal;
          CREATE TABLE t1(x);
          INSERT INTO t1 VALUES('hello');
          INSERT INTO t1 VALUES('world');
        
SELECT * FROM t1 
INSERT INTO t1 VALUES('!');
          PRAGMA wal_checkpoint = truncate;
        
SELECT * FROM t1 
INSERT INTO t1 VALUES('!');
          INSERT INTO t1 VALUES('!');
    
          PRAGMA cache_size = 10;
          CREATE TABLE t2(x);
    
          BEGIN;
            WITH s(i) AS (
              SELECT 1 UNION ALL SELECT i+1 FROM s WHERE i<500
              )
            INSERT INTO t2 SELECT randomblob(500) FROM s;
            SELECT count(*) FROM t2;
        
SELECT * FROM t1;
          SELECT count(*) FROM t2;
        
PRAGMA journal_mode = wal;
          CREATE TABLE t1(x);
          INSERT INTO t1 VALUES('hello');
          INSERT INTO t1 VALUES('world');
          INSERT INTO t1 VALUES('!');
          INSERT INTO t1 VALUES('world');
          INSERT INTO t1 VALUES('hello');
        
SELECT * FROM t1;
        
SELECT * FROM t1 
PRAGMA wal_checkpoint = truncate;
        
PRAGMA journal_mode = wal;
          CREATE TABLE t1(x);
          INSERT INTO t1 VALUES('hello');
          INSERT INTO t1 VALUES('world');
          INSERT INTO t1 VALUES('!');
          INSERT INTO t1 VALUES('world');
          INSERT INTO t1 VALUES('hello');
        
PRAGMA wal_checkpoint = truncate 
