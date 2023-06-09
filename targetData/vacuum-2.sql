

      BEGIN;
      VACUUM;
    


COMMIT


    BEGIN;
    CREATE TABLE t4 AS SELECT * FROM t1;
    CREATE TABLE t5 AS SELECT * FROM t1;
    COMMIT;
    DROP TABLE t4;
    DROP TABLE t5;
  

    VACUUM
  


SELECT count(*) FROM sqlite_master


    BEGIN;
    CREATE TABLE t6 AS SELECT * FROM t1;
    CREATE TABLE t7 AS SELECT * FROM t1;
    COMMIT;
  

    -- The "SELECT * FROM sqlite_master" statement ensures that this test
    -- works when shared-cache is enabled. If shared-cache is enabled, then
    -- db3 shares a cache with db2 (but not db - it was opened as 
    -- "./test.db").
    SELECT * FROM sqlite_master;
    SELECT * FROM t7 LIMIT 1
  

    VACUUM;
  

    INSERT INTO t7 VALUES(1234567890,'hello','world');
  

    SELECT * FROM t7 WHERE a=1234567890
  


    SELECT * FROM t7 WHERE a=1234567890
  


    INSERT INTO t7 SELECT * FROM t6;
    SELECT count(*) FROM t7;
  


    DELETE FROM t7;
    SELECT count(*) FROM t7;
  
