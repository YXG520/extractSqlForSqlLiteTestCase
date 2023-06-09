
SELECT name FROM sqlite_master WHERE type='table' ORDER BY name

BEGIN TRANSACTION
SELECT name FROM sqlite_master WHERE type='table' ORDER BY name




CREATE TABLE one(a text, b int)
SELECT name FROM sqlite_master WHERE type='table' ORDER BY name

SELECT a,b FROM one ORDER BY b

INSERT INTO one(a,b) VALUES('hello', 1)
SELECT a,b FROM one ORDER BY b

ROLLBACK
SELECT name FROM sqlite_master WHERE type='table' ORDER BY name

SELECT a,b FROM one ORDER BY b


    SELECT name fROM sqlite_master 
    WHERE type='table' OR type='index'
    ORDER BY name
  


    BEGIN TRANSACTION;
    CREATE TABLE t1(a int, b int, c int);
    SELECT name fROM sqlite_master 
    WHERE type='table' OR type='index'
    ORDER BY name;
  


    CREATE INDEX i1 ON t1(a);
    SELECT name fROM sqlite_master 
    WHERE type='table' OR type='index'
    ORDER BY name;
  


    COMMIT;
    SELECT name fROM sqlite_master 
    WHERE type='table' OR type='index'
    ORDER BY name;
  


    BEGIN TRANSACTION;
    CREATE TABLE t2(a int, b int, c int);
    CREATE INDEX i2a ON t2(a);
    CREATE INDEX i2b ON t2(b);
    DROP TABLE t1;
    SELECT name fROM sqlite_master 
    WHERE type='table' OR type='index'
    ORDER BY name;
  


    ROLLBACK;
    SELECT name fROM sqlite_master 
    WHERE type='table' OR type='index'
    ORDER BY name;
  


    BEGIN TRANSACTION;
    DROP INDEX i1;
    SELECT name fROM sqlite_master 
    WHERE type='table' OR type='index'
    ORDER BY name;
  


    ROLLBACK;
    SELECT name fROM sqlite_master 
    WHERE type='table' OR type='index'
    ORDER BY name;
  


    BEGIN TRANSACTION;
    DROP INDEX i1;
    CREATE TABLE t2(x int, y int, z int);
    CREATE INDEX i2x ON t2(x);
    CREATE INDEX i2y ON t2(y);
    INSERT INTO t2 VALUES(1,2,3);
    SELECT name fROM sqlite_master 
    WHERE type='table' OR type='index'
    ORDER BY name;
  


    COMMIT;
    SELECT name fROM sqlite_master 
    WHERE type='table' OR type='index'
    ORDER BY name;
  


    SELECT * FROM t2;
  


    SELECT x FROM t2 WHERE y=2;
  


    BEGIN TRANSACTION;
    DROP TABLE t1;
    DROP TABLE t2;
    SELECT name fROM sqlite_master 
    WHERE type='table' OR type='index'
    ORDER BY name;
  


    SELECT * FROM t2
  


    ROLLBACK;
    SELECT name fROM sqlite_master 
    WHERE type='table' OR type='index'
    ORDER BY name;
  


    SELECT * FROM t2;
  
