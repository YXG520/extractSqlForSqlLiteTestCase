global sqlite3_pager_readdb_count
  global sqlite3_pager_writedb_count
  global sqlite3_pager_writej_count
  global sqlite3_pager_pgfree_count
  set sqlite3_pager_readdb_count 0
  set sqlite3_pager_writedb_count 0
  set sqlite3_pager_writej_count 0
  set r [$db eval $sql]
  set cnt [list $sqlite3_pager_readdb_count \
                $sqlite3_pager_writedb_count \
                $sqlite3_pager_writej_count ]
  return [concat $cnt $r]

PRAGMA auto_vacuum = OFF;
    PRAGMA page_size = 1024;
  
CREATE TABLE t1(x);
  
INSERT INTO t1 VALUES(randomblob(5000));
  
SELECT length(x) FROM t1
  
SELECT hex(x) FROM t1
  
SELECT hex(x) FROM t1
  
SELECT hex(x) FROM t1
  
DELETE FROM t1 WHERE rowid=1
  
INSERT INTO t1 VALUES(randomblob(1500));
  
INSERT INTO t1 VALUES(randomblob(1500));
  
INSERT INTO t1 VALUES(randomblob(1500));
  
INSERT INTO t2 SELECT * FROM t1;
  
DROP TABLE t2;
  
DELETE FROM t1;
  
INSERT INTO t1 VALUES(randomblob(11300))
  
DELETE FROM t1
  
