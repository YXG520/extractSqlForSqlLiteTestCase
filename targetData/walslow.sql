PRAGMA journal_mode = wal 
CREATE TABLE t1(a, b) 
CREATE INDEX i1 ON t1(a) 
CREATE INDEX i2 ON t1(b) 
INSERT INTO t1 VALUES(randomblob($w), randomblob($x)) 
PRAGMA integrity_check 
PRAGMA integrity_check 
PRAGMA journal_mode = WAL 
PRAGMA integrity_check 
SELECT count(*) FROM t1 WHERE a!=b 
SELECT count(*) FROM t1 WHERE a!=b 
PRAGMA synchronous = NORMAL;
    PRAGMA page_size = 1024;
    CREATE TABLE t1(a, b);
    INSERT INTO t1 VALUES(1, randomblob(300));
    INSERT INTO t1 VALUES(2, randomblob(300));
    PRAGMA journal_mode = WAL;
    INSERT INTO t1 VALUES(3, randomblob(300));
  
SELECT a FROM t1 
set FAIL 1
PRAGMA journal_mode = wal;
  CREATE TABLE t1(x, y);
  INSERT INTO "t1" VALUES('A',0);
  CREATE TABLE t2(x, y);
  INSERT INTO "t2" VALUES('B',2);

SELECT * FROM t2 
SELECT count(*) FROM t2 
INSERT INTO t2 SELECT blob(400), blob(400) FROM t2 
SELECT count(*) FROM t2 
PRAGMA journal_mode = WAL;
      CREATE TABLE t1(x);
      INSERT INTO t1 SELECT randomblob(800);
    
SELECT count(*) FROM t1 
INSERT INTO t1 SELECT randomblob(800) FROM t1 
SELECT count(*) FROM t1 
SELECT count(*) FROM t1 
SELECT count(*) FROM t1 
PRAGMA integrity_check 
