PRAGMA read_uncommitted = 1;
    CREATE TABLE t1(a,b,c);
    BEGIN;
    SELECT * FROM sqlite_master;
  
SELECT * FROM sqlite_master;
  INSERT INTO t1 VALUES(1,2,3);
  BEGIN TRANSACTION;
  INSERT INTO t1 VALUES(1,2,3);
  INSERT INTO t1 VALUES(4,5,6);
  ROLLBACK;
  SELECT * FROM t1;
  BEGIN TRANSACTION;
  INSERT INTO t1 VALUES(1,2,3);
  INSERT INTO t1 VALUES(4,5,6);
  COMMIT;
  SELECT * FROM t1;
  DELETE FROM t1 WHERE a<100;

SELECT * FROM t1;
    
pragma integrity_check
PRAGMA read_uncommitted = 1;
    BEGIN;
    CREATE TABLE t1(a, b);
    INSERT INTO t1(oid) VALUES(NULL);
    INSERT INTO t1(oid) SELECT NULL FROM t1;
    INSERT INTO t1(oid) SELECT NULL FROM t1;
    INSERT INTO t1(oid) SELECT NULL FROM t1;
    INSERT INTO t1(oid) SELECT NULL FROM t1;
    INSERT INTO t1(oid) SELECT NULL FROM t1;
    INSERT INTO t1(oid) SELECT NULL FROM t1;
    INSERT INTO t1(oid) SELECT NULL FROM t1;
    INSERT INTO t1(oid) SELECT NULL FROM t1;
    INSERT INTO t1(oid) SELECT NULL FROM t1;
    INSERT INTO t1(oid) SELECT NULL FROM t1;
    UPDATE t1 set a = oid, b = 'abcdefghijklmnopqrstuvwxyz0123456789';
    CREATE INDEX i1 ON t1(a);
    COMMIT;
    BEGIN;
    SELECT * FROM sqlite_master;
  
DELETE FROM t1 WHERE 0 = (a % 2);
BEGIN;
INSERT INTO t1 SELECT a+1, b FROM t1;
INSERT INTO t1 SELECT 'string' || a, b FROM t1 WHERE 0 = (a%7);
COMMIT;
SELECT max(a), min(a), count(*) FROM (SELECT a FROM t1 order by a);
    
PRAGMA read_uncommitted = 1;
    PRAGMA cache_size = 10;
    BEGIN;
    CREATE TABLE t1(a, b, UNIQUE(a, b));
  
INSERT INTO t1 VALUES($a, $b)
COMMIT
BEGIN;
    INSERT INTO t1 VALUES('201.201.201.201.201', NULL);
    UPDATE t1 SET a = '202.202.202.202.202' WHERE a LIKE '201%';
    COMMIT;
  
PRAGMA read_uncommitted = 1;
    PRAGMA cache_size = 10;
    BEGIN;
    CREATE TABLE t1(a, b, UNIQUE(a, b));
  
INSERT INTO t1 VALUES($a, $b)
COMMIT
BEGIN;
    INSERT INTO t1 VALUES('201.201.201.201.201', NULL);
    UPDATE t1 SET a = '202.202.202.202.202' WHERE a LIKE '201%';
    COMMIT;
  
PRAGMA read_uncommitted = 1;
    BEGIN;
    CREATE TABLE t1(a, b, UNIQUE(a, b));
  
INSERT INTO t1 VALUES($a, $b)
COMMIT
INSERT INTO t1 VALUES(6, NULL);
  
do_test shared_malloc-4.$::n.cleanup.2 {
      sqlite3_column_text $::STMT 0
    
PRAGMA read_uncommitted = 1;
    BEGIN;
    CREATE TABLE t1(a, b, UNIQUE(a, b));
  
INSERT INTO t1 VALUES($a, $b)
COMMIT
BEGIN;
    INSERT INTO t1 VALUES(6, NULL);
    ROLLBACK
SELECT a FROM t1
incr ::aborted
    
PRAGMA page_size = 4096;
  PRAGMA page_size = 1024;

SELECT * FROM sqlite_master 
SELECT * FROM sqlite_master 
CREATE TABLE abc(a, b, c);
  INSERT INTO abc VALUES(1, 2, 3);

