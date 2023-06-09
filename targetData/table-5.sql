
DROP TABLE test009

DROP TABLE IF EXISTS test009

DROP TABLE IF EXISTS sqlite_master


    ANALYZE;
    DROP TABLE IF EXISTS sqlite_stat1;
    DROP TABLE IF EXISTS sqlite_stat2;
    DROP TABLE IF EXISTS sqlite_stat3;
    DROP TABLE IF EXISTS sqlite_stat4;
    SELECT name FROM sqlite_master WHERE name GLOB 'sqlite_stat*';
  


    CREATE TABLE t0(a,b);
    CREATE INDEX t ON t0(a);
    PRAGMA writable_schema=ON;
    UPDATE sqlite_master SET sql='CREATE TABLE a.b(a UNIQUE';
    BEGIN;
    CREATE TABLE t1(x);
    ROLLBACK;
    DROP TABLE IF EXISTS t99;
  

EXPLAIN CREATE TABLE test1(f1 int)
SELECT name FROM sqlite_master WHERE type!='meta'

CREATE TABLE test1(f1 int)
EXPLAIN DROP TABLE test1
SELECT name FROM sqlite_master WHERE type!='meta'
CREATE TABLE 'Spaces In This Name!'(x int)
INSERT INTO 'spaces in this name!' VALUES(1)
