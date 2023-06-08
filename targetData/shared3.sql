PRAGMA main.cache_size = 10;
  
PRAGMA main.cache_size 
PRAGMA main.cache_size 
PRAGMA main.cache_size 
PRAGMA main.cache_size 
select count(*) from sqlite_master
BEGIN;
    INSERT INTO t1 VALUES(10, randomblob(5000))
  
select count(*) from sqlite_master
INSERT INTO t1 VALUES(10, randomblob(10000))
  
select count(*) from sqlite_master
PRAGMA auto_vacuum = 2;
  CREATE TABLE t1(x, y);
  INSERT INTO t1 VALUES(randomblob(500), randomblob(500));
  INSERT INTO t1 SELECT randomblob(500), randomblob(500) FROM t1;
  INSERT INTO t1 SELECT randomblob(500), randomblob(500) FROM t1;
  INSERT INTO t1 SELECT randomblob(500), randomblob(500) FROM t1;
  INSERT INTO t1 SELECT randomblob(500), randomblob(500) FROM t1;
  INSERT INTO t1 SELECT randomblob(500), randomblob(500) FROM t1;
  INSERT INTO t1 SELECT randomblob(500), randomblob(500) FROM t1;
  INSERT INTO t1 SELECT randomblob(500), randomblob(500) FROM t1;

SELECT count(*) FROM sqlite_master 
BEGIN;
    DELETE FROM t1 WHERE 1;
    PRAGMA incremental_vacuum;

SELECT count(*) FROM sqlite_master 
COMMIT 
