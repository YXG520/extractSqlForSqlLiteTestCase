

  PRAGMA mmap_size = 10000000;
  PRAGMA cache_size = 10;
  CREATE TABLE t1(a, b);


 INSERT INTO t1 VALUES($i, randomblob(2000)) 


  CREATE INDEX i1 ON t1(b);

 CREATE TABLE t1(x) 
 PRAGMA temp_store = 1 
