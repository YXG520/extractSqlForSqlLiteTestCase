PRAGMA auto_vacuum = 0;
      PRAGMA journal_mode = WAL;
      CREATE TABLE t1(x, y);
      INSERT INTO t1 VALUES('a', 'b');
    
a b

a b c d

a b c d e f
INSERT INTO t1 VALUES('g', 'h');
      PRAGMA wal_checkpoint;
    
a b c d e f g h

SELECT * FROM t1 
SELECT * FROM t1 
a b c d e f g h i j
PRAGMA wal_checkpoint;
      INSERT INTO t1 VALUES('k', 'l');
    
a b c d e f g h i j k l
SELECT * FROM t1 
SELECT * FROM sqlite_master 
SELECT * FROM t1 
INSERT INTO t1 VALUES(1, 2);
      INSERT INTO t1 VALUES(3, 4);
      INSERT INTO t1 VALUES(5, 6);
      PRAGMA wal_checkpoint;
    
SELECT * FROM t1 
PRAGMA cache_size = 10;
      BEGIN;
      CREATE TABLE t2(x, y);
      INSERT INTO t2 VALUES('abc', 'xyz');
      INSERT INTO t2 SELECT x||y, y||x FROM t2;
      INSERT INTO t2 SELECT x||y, y||x FROM t2;
      INSERT INTO t2 SELECT x||y, y||x FROM t2;
      INSERT INTO t2 SELECT x||y, y||x FROM t2;
      INSERT INTO t2 SELECT x||y, y||x FROM t2;
      INSERT INTO t2 SELECT x||y, y||x FROM t2;
      INSERT INTO t2 SELECT x||y, y||x FROM t2;
      INSERT INTO t2 SELECT x||y, y||x FROM t2;
      INSERT INTO t2 SELECT x||y, y||x FROM t2;
    
SELECT * FROM t1 
SELECT count(*) FROM t2 
SELECT count(*) FROM t2 
PRAGMA auto_vacuum = 0;
      PRAGMA journal_mode = WAL;
      BEGIN;
        CREATE TABLE t2(x, y);
        INSERT INTO t2 VALUES('abc', 'xyz');
        INSERT INTO t2 SELECT x||y, y||x FROM t2;
        INSERT INTO t2 SELECT x||y, y||x FROM t2;
      COMMIT;
    
PRAGMA wal_checkpoint 
