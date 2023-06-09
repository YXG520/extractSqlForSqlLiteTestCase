

    PRAGMA cache_size=10;
    DELETE FROM t1;
  

    BEGIN;
    INSERT INTO t1 SELECT $::zShort, $::zLong;
  


 ROLLBACK 
