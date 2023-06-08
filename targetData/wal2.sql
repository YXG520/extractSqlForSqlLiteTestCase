PRAGMA journal_mode = WAL;
    CREATE TABLE t1(a);
  
INSERT INTO t1 VALUES(1);
    INSERT INTO t1 VALUES(2);
    INSERT INTO t1 VALUES(3);
    INSERT INTO t1 VALUES(4);
    SELECT count(a), sum(a) FROM t1;
  
SELECT count(a), sum(a) FROM t1 
INSERT INTO t1 VALUES($iInsert) 
SELECT count(a), sum(a) FROM t1 
PRAGMA journal_mode = WAL;
    CREATE TABLE t1(a);
  
INSERT INTO t1 VALUES(1);
    INSERT INTO t1 VALUES(2);
    INSERT INTO t1 VALUES(3);
    INSERT INTO t1 VALUES(4);
    SELECT count(a), sum(a) FROM t1;
  
SELECT count(a), sum(a) FROM t1 
INSERT INTO t1 VALUES($iInsert) 
SELECT count(a), sum(a) FROM t1 
SELECT count(a), sum(a) FROM t1 
SELECT count(a), sum(a) FROM t1 
PRAGMA journal_mode = WAL;
    CREATE TABLE t1(a);
    INSERT INTO t1 VALUES(1);
    INSERT INTO t1 VALUES(2);
    INSERT INTO t1 VALUES(3);
    INSERT INTO t1 VALUES(4);
  
SELECT count(a), sum(a) FROM t1 
SELECT count(a), sum(a) FROM t1 
PRAGMA auto_vacuum = 0;
    PRAGMA journal_mode = WAL;
    CREATE TABLE data(x);
    INSERT INTO data VALUES('need xShmOpen to see this');
    PRAGMA wal_checkpoint;
  
SELECT * FROM data 
SELECT * FROM data 
PRAGMA journal_mode = WAL;
    CREATE TABLE x(y);
    INSERT INTO x VALUES(1);
  
PRAGMA wal_checkpoint 
Pragma Journal_Mode = Wal;
  
PRAGMA lock_status 
SELECT * FROM sqlite_master;
    Pragma Locking_Mode = Exclusive;
  
BEGIN;
      CREATE TABLE t1(a, b);
      INSERT INTO t1 VALUES(1, 2);
    COMMIT;
    PRAGMA lock_status;
  
PRAGMA locking_mode = normal; 
    PRAGMA lock_status;
  
SELECT * FROM t1;
    PRAGMA lock_status;
  
INSERT INTO t1 VALUES(3, 4);
    PRAGMA lock_status;
  
Pragma Locking_Mode = Exclusive;
    Pragma Journal_Mode = Wal;
    Pragma Lock_Status;
  
BEGIN;
      CREATE TABLE t1(a, b);
      INSERT INTO t1 VALUES(1, 2);
    COMMIT;
    Pragma loCK_STATus;
  
SELECT * FROM sqlite_master 
PRAGMA LOCKING_MODE = EXCLUSIVE 
SELECT * FROM t1;
    pragma lock_status;
  
INSERT INTO t1 VALUES(3, 4);
    pragma lock_status;
  
PRAGMA locking_mode = NORMAL;
    pragma lock_status;
  
BEGIN IMMEDIATE; COMMIT;
    pragma lock_status;
  
PRAGMA locking_mode = EXCLUSIVE;
    BEGIN IMMEDIATE; COMMIT;
    PRAGMA locking_mode = NORMAL;
  
SELECT * FROM t1;
    pragma lock_status;
  
INSERT INTO t1 VALUES(5, 6);
    SELECT * FROM t1;
    pragma lock_status;
  
PRAGMA journal_mode = WAL;
    PRAGMA locking_mode = exclusive;
    BEGIN;
      CREATE TABLE t1(x);
      INSERT INTO t1 VALUES('Chico');
      INSERT INTO t1 VALUES('Harpo');
    COMMIT;
  
PRAGMA journal_mode = DELETE 
PRAGMA lock_status 
BEGIN;
      INSERT INTO t1 VALUES('Groucho');
  
PRAGMA lock_status 
COMMIT 
PRAGMA lock_status 
2 {
    PRAGMA auto_vacuum = 0;
    PRAGMA journal_mode = WAL;
    BEGIN;
      CREATE TABLE t1(x);
      INSERT INTO t1 VALUES('Leonard');
      INSERT INTO t1 VALUES('Arthur');
    COMMIT;
  
set sq [string trim $sq]
    if {[string match {#*
PRAGMA auto_vacuum = 0;
    PRAGMA journal_mode = wal;
    PRAGMA locking_mode = exclusive;
    CREATE TABLE t2(a, b);
    PRAGMA wal_checkpoint;
    INSERT INTO t2 VALUES('I', 'II');
    PRAGMA journal_mode;
  
PRAGMA locking_mode = normal;
    INSERT INTO t2 VALUES('III', 'IV');
    PRAGMA locking_mode = exclusive;
    SELECT * FROM t2;
  
PRAGMA wal_checkpoint 
SELECT * FROM sqlite_master 
PRAGMA locking_mode = exclusive 
INSERT INTO t2 VALUES('V', 'VI') 
PRAGMA locking_mode = normal 
INSERT INTO t2 VALUES('VII', 'VIII') 
SELECT * FROM t2 
INSERT INTO t2 VALUES('IX', 'X') 
SELECT * FROM t2 
PRAGMA page_size = 4096;
    PRAGMA journal_mode = WAL;
    CREATE TABLE t1(a, b);
  
PRAGMA wal_checkpoint 
SELECT * FROM sqlite_master 
PRAGMA auto_vacuum=OFF;
    PRAGMA page_size = 1024;
    PRAGMA journal_mode = WAL;
    CREATE TABLE t1(x);
    INSERT INTO t1 VALUES(zeroblob(8188*1020));
    CREATE TABLE t2(y);
    PRAGMA wal_checkpoint;
  
SELECT rootpage>=8192 FROM sqlite_master WHERE tbl_name = 't2';
  
PRAGMA cache_size = 10;
    CREATE TABLE t3(z);
    BEGIN;
      INSERT INTO t3 VALUES(randomblob(900));
      INSERT INTO t3 SELECT randomblob(900) FROM t3;
      INSERT INTO t2 VALUES('hello');
      INSERT INTO t3 SELECT randomblob(900) FROM t3;
      INSERT INTO t3 SELECT randomblob(900) FROM t3;
      INSERT INTO t3 SELECT randomblob(900) FROM t3;
      INSERT INTO t3 SELECT randomblob(900) FROM t3;
      INSERT INTO t3 SELECT randomblob(900) FROM t3;
      INSERT INTO t3 SELECT randomblob(900) FROM t3;
    ROLLBACK;
  
INSERT INTO t2 VALUES('goodbye');
    INSERT INTO t3 SELECT randomblob(900) FROM t3;
    INSERT INTO t3 SELECT randomblob(900) FROM t3;
  
SELECT * FROM t2 
PRAGMA journal_mode = WAL;
    CREATE TABLE x(y);
    INSERT INTO x VALUES('Barton');
    INSERT INTO x VALUES('Deakin');
  
INSERT INTO x VALUES('Watson') 
SELECT * FROM x 
SELECT * FROM x 
PRAGMA journal_mode = WAL;
    CREATE TABLE t1(a, b);
    PRAGMA wal_checkpoint;
    INSERT INTO t1 VALUES(1, 2);
    INSERT INTO t1 VALUES(3, 4);
  
SELECT * FROM t1 
SELECT * FROM t1 
SELECT * FROM t1 
SELECT * FROM t1 
PRAGMA journal_mode = WAL;
    CREATE TABLE t1(a, b, c);
    INSERT INTO t1 VALUES(1, 2, 3);
    INSERT INTO t1 VALUES(4, 5, 6);
    INSERT INTO t1 VALUES(7, 8, 9);
    SELECT * FROM t1;
  
SELECT name FROM sqlite_master 
INSERT INTO t1 VALUES(10, 11, 12) 
SELECT * FROM t1 
CREATE TABLE tx(y, z);
      PRAGMA journal_mode = WAL;
    
INSERT INTO tx DEFAULT VALUES 
PRAGMA journal_mode = WAL;
    CREATE TABLE t1(a, b);
    PRAGMA wal_checkpoint;
    INSERT INTO t1 VALUES('3.14', '2.72');
  

SELECT * FROM t1 
INSERT INTO t1 DEFAULT VALUES 
1 { 
PRAGMA auto_vacuum = 0; PRAGMA synchronous = FULL;

wal
PRAGMA wal_autocheckpoint = 10;
    CREATE TABLE t1(a, b);                -- 2 wal syncs
    INSERT INTO t1 VALUES(1, 2);          -- 2 wal sync
    PRAGMA wal_checkpoint;                -- 1 wal sync, 1 db sync
    BEGIN;
      INSERT INTO t1 VALUES(3, 4);
      INSERT INTO t1 VALUES(5, 6);
    COMMIT;                               -- 2 wal sync
    PRAGMA wal_checkpoint;                -- 1 wal sync, 1 db sync
  
INSERT INTO t1 VALUES(7, zeroblob(12*4096)) 
PRAGMA wal_autocheckpoint = 1000 
INSERT INTO t1 VALUES(9, 10) 
INSERT INTO t1 VALUES(11, 12) 
INSERT INTO t1 VALUES(13, 14) 
INSERT INTO t1 VALUES('abc') 
INSERT INTO t1 VALUES('abc') 
INSERT INTO t1 VALUES('def') 
PRAGMA wal_checkpoint 
