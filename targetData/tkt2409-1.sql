

    PRAGMA cache_size=10;
    CREATE TABLE t1(x TEXT UNIQUE NOT NULL, y BLOB);
  

    BEGIN;
    INSERT INTO t1 VALUES($::zShort, $::zLong);
  


 ROLLBACK 
PRAGMA cache_size = $iCache
