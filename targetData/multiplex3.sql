CREATE TABLE t1(a PRIMARY KEY, b);
    INSERT INTO t1 VALUES(randomblob(15), randomblob(2000));
    INSERT INTO t1 SELECT randomblob(15), randomblob(2000) FROM t1;    --   2
    INSERT INTO t1 SELECT randomblob(15), randomblob(2000) FROM t1;    --   4
    INSERT INTO t1 SELECT randomblob(15), randomblob(2000) FROM t1;    --   8
    INSERT INTO t1 SELECT randomblob(15), randomblob(2000) FROM t1;    --  16
    INSERT INTO t1 SELECT randomblob(15), randomblob(2000) FROM t1;    --  32
    INSERT INTO t1 SELECT randomblob(15), randomblob(2000) FROM t1;    --  64
    INSERT INTO t1 SELECT randomblob(15), randomblob(2000) FROM t1;    -- 128
    INSERT INTO t1 SELECT randomblob(15), randomblob(2000) FROM t1;    -- 256
    INSERT INTO t1 SELECT randomblob(15), randomblob(2000) FROM t1;    -- 512
  
SELECT md5sum(a, b) FROM t1 ORDER BY a
PRAGMA journal_mode = truncate 
PRAGMA synchronous = off 
UPDATE t1 SET a=randomblob(12), b=randomblob(1500) WHERE (rowid%32)=0
  
SELECT md5sum(a, b) FROM t1 ORDER BY a
PRAGMA cache_size = 10 
BEGIN 
UPDATE t1 SET a=randomblob(12), b=randomblob(1400) WHERE rowid=5*$iTest
    
SELECT md5sum(a, b) FROM t1 ORDER BY a
error "disk I/O error"
SELECT md5sum(a, b) FROM t1 ORDER BY a
