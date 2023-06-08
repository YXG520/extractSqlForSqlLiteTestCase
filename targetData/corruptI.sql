PRAGMA page_size=1024;
  PRAGMA auto_vacuum=0;
  CREATE TABLE t1(a);
  CREATE INDEX i1 ON t1(a);
  INSERT INTO t1 VALUES('abcdefghijklmnop');

SELECT * FROM t1 WHERE a = 10 
SELECT * FROM t1 WHERE a = 10 
CREATE TABLE r(x);
    INSERT INTO r VALUES('ABCDEFGHIJK');
    CREATE INDEX r1 ON r(x);
  
SELECT * FROM r WHERE x >= 10.0 
SELECT * FROM r WHERE x >= 10 
# The following tests only work if OVERSIZE_CELL_CHECK is disabled

PRAGMA auto_vacuum=0;
     PRAGMA page_size = 512;
     CREATE TABLE t1(a INTEGER PRIMARY KEY, b);
     WITH s(a, b) AS (
       SELECT 2, 'abcdefghij'
       UNION ALL
       SELECT a+2, b FROM s WHERe a < 40
     )
     INSERT INTO t1 SELECT * FROM s;
   
INSERT INTO t1 VALUES(5, 'klmnopqrst') 
INSERT INTO t1 VALUES(7, 'klmnopqrst') 
INSERT INTO t1 VALUES(9, 'klmnopqrst');
   
PRAGMA page_size = 65536;
  PRAGMA autovacuum = 0;
  CREATE TABLE t1(a INTEGER PRIMARY KEY, b);
  INSERT INTO t1 VALUES(-1, 'abcdefghij');
  INSERT INTO t1 VALUES(0, 'abcdefghij');

DELETE FROM t1 WHERE a=0 
PRAGMA page_size = 512;
    PRAGMA auto_vacuum = 2;
  
i
CREATE TABLE t100(x);
    DROP TABLE t100;
  
PRAGMA page_count 

CREATE TABLE tx(x); 
PRAGMA page_size = 512;
  PRAGMA auto_vacuum=0;
  CREATE TABLE t1(x);
  INSERT INTO t1 VALUES(zeroblob(300));
  INSERT INTO t1 VALUES(zeroblob(600));

DELETE FROM t1 WHERE rowid=2 
PRAGMA auto_vacuum=0;
  CREATE TABLE t1(x PRIMARY KEY, y);
  INSERT INTO t1 VALUES('a', 'A');
  INSERT INTO t1 VALUES('b', 'A');
  INSERT INTO t1 VALUES('c', 'A');
  SELECT name FROM sqlite_master;

PRAGMA writable_schema = 1;
  DELETE FROM sqlite_master WHERE name = 'sqlite_autoindex_t1_1';

UPDATE t1 SET x='d' AND y='D' WHERE rowid = 2 
PRAGMA auto_vacuum=0;
  CREATE TABLE t1(x);
  INSERT INTO t1 VALUES(zeroblob(300));
  INSERT INTO t1 VALUES(zeroblob(300));
  INSERT INTO t1 VALUES(zeroblob(300));
  INSERT INTO t1 VALUES(zeroblob(300));

DELETE FROM t1 
PRAGMA integrity_check 
