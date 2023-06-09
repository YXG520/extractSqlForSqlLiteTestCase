
 
    PRAGMA page_size = 1024; CREATE TABLE t1(x);
  
 INSERT INTO t1 VALUES( randomblob(10) ) 
 DELETE FROM t1 WHERE rowid=1 
 INSERT INTO t1 VALUES( randomblob(10) ) 
 
    PRAGMA page_size = 1024; CREATE TABLE t1(x);
  
