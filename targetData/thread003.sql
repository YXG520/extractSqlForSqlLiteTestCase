BEGIN;
    CREATE TABLE t1(a, b, c);
  
INSERT INTO t1 VALUES($ii, randomblob(200), randomblob(200))
CREATE INDEX i1 ON t1(a, b); 
    COMMIT;
  
BEGIN;
    CREATE TABLE t1(a, b, c);
  
INSERT INTO t1 VALUES($ii, randomblob(200), randomblob(200))
CREATE INDEX i1 ON t1(a, b); 
    COMMIT;
  
PRAGMA cache_size = 15 
PRAGMA cache_size = 15 
PRAGMA cache_size = 15 
