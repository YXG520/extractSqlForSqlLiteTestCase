SELECT rowid FROM sqlite_master
unread_lock_db
      read_lock_db
    
PRAGMA cache_size=10;
    CREATE TABLE t1(x TEXT UNIQUE NOT NULL, y BLOB);
  
BEGIN;
    INSERT INTO t1 VALUES($::zShort, $::zLong);
  
ROLLBACK 
BEGIN;
        INSERT INTO t1 VALUES($::zShort, $::zLong);
      
ROLLBACK;
    BEGIN;
    INSERT INTO t1 VALUES($::zShort, $::zLong);
    COMMIT;
  
COMMIT;
  
PRAGMA cache_size=10;
    DELETE FROM t1;
  
BEGIN;
    INSERT INTO t1 SELECT $::zShort, $::zLong;
  
ROLLBACK 
PRAGMA cache_size=20;
    DROP TABLE t1;
    CREATE TABLE t1 (x TEXT UNIQUE NOT NULL);
  
ROLLBACK 
