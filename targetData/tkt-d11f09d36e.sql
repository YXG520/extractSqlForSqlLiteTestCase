PRAGMA synchronous = NORMAL;
    PRAGMA cache_size = 10;
    CREATE TABLE t1(x, y, UNIQUE(x, y));
    BEGIN;
  
INSERT INTO t1 VALUES($i, $i) 
BEGIN;
      UPDATE t1 set x = x+10000;
    ROLLBACK;
  
PRAGMA integrity_check 
SAVEPOINT tr;
      UPDATE t1 set x = x+10000;
    ROLLBACK TO tr;
    RELEASE tr;
  
PRAGMA integrity_check 
