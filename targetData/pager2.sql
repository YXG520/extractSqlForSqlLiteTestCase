PRAGMA journal_mode = memory 
PRAGMA journal_mode = memory;
    PRAGMA locking_mode = exclusive;
  
PRAGMA journal_mode = WAL 
PRAGMA auto_vacuum = 1 
PRAGMA synchronous = off 
PRAGMA cache_size = 10;
      CREATE TABLE t1(i INTEGER PRIMARY KEY, j blob);
    
COMMIT ; BEGIN 
SELECT COALESCE(max(i), 0) FROM t1;
          PRAGMA integrity_check;
        
INSERT INTO t1(j) VALUES(randomblob(1500)) 
SELECT COALESCE(max(i), 0) FROM t1;
        PRAGMA integrity_check;
      
CREATE TABLE t1(a, b);
    PRAGMA journal_mode = off;
    BEGIN;
      INSERT INTO t1 VALUES(1, 2);
    ROLLBACK;
    SELECT * FROM t1;
  
PRAGMA auto_vacuum = incremental;
    PRAGMA page_size = 1024;
    PRAGMA journal_mode = off;
    CREATE TABLE t1(a, b);
    INSERT INTO t1 VALUES(zeroblob(5000), zeroblob(5000));
    DELETE FROM t1;
    PRAGMA incremental_vacuum;
  
file:test.db?mode=memory&cache=shared
file:test.db?mode=memory&cache=shared
