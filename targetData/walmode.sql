PRAGMA journal_mode = wal 
PRAGMA main.journal_mode = wal 
PRAGMA main.journal_mode 
PRAGMA page_size = 1024 
PRAGMA journal_mode = wal 
CREATE TABLE t1(a, b) 
SELECT * FROM sqlite_master 
PRAGMA journal_mode = wal 
INSERT INTO t1 VALUES(1, 2) 
PRAGMA journal_mode = persist 
SELECT * FROM t1 
SELECT * FROM t1 
PRAGMA main.journal_mode 
PRAGMA main.journal_mode = wal 
SELECT * FROM t1 
PRAGMA journal_mode = delete 
PRAGMA main.journal_mode 
PRAGMA journal_mode = delete 
PRAGMA main.journal_mode 
BEGIN;
      SELECT * FROM t1;
  
delete
delete
PRAGMA main.journal_mode = wal 
PRAGMA main.journal_mode 
PRAGMA main.journal_mode 
PRAGMA main.journal_mode = wal 
BEGIN;
      CREATE TABLE t1(a, b);
      INSERT INTO t1 VALUES(1, 2);
    COMMIT;
    SELECT * FROM t1;
    PRAGMA main.journal_mode;
  
PRAGMA main.journal_mode = wal 
INSERT INTO t1 VALUES(3, 4);
    SELECT * FROM t1;
    PRAGMA main.journal_mode;
  
PRAGMA main.journal_mode 
PRAGMA main.journal_mode = wal 
BEGIN;
      CREATE TABLE t1(a, b);
      INSERT INTO t1 VALUES(1, 2);
    COMMIT;
    SELECT * FROM t1;
    PRAGMA main.journal_mode;
  
PRAGMA main.journal_mode = wal 
INSERT INTO t1 VALUES(3, 4);
    SELECT * FROM t1;
    PRAGMA main.journal_mode;
  
PRAGMA temp.journal_mode 
PRAGMA temp.journal_mode = wal 
BEGIN;
      CREATE TEMP TABLE t1(a, b);
      INSERT INTO t1 VALUES(1, 2);
    COMMIT;
    SELECT * FROM t1;
    PRAGMA temp.journal_mode;
  
PRAGMA temp.journal_mode = wal 
INSERT INTO t1 VALUES(3, 4);
    SELECT * FROM t1;
    PRAGMA temp.journal_mode;
  
PRAGMA journal_mode = WAL;
    CREATE TABLE t1(a, b);
  
1  "PRAGMA journal_mode"                wal
  2  "PRAGMA main.journal_mode"           wal
  3  "PRAGMA journal_mode = delete"       delete
  4  "PRAGMA journal_mode"                delete
  5  "PRAGMA main.journal_mode"           delete
  6  "PRAGMA journal_mode = wal"          wal
  7  "PRAGMA journal_mode"                wal
  8  "PRAGMA main.journal_mode"           wal

  9  "PRAGMA journal_mode"                wal
 10  "PRAGMA main.journal_mode"           wal
 11  "PRAGMA main.journal_mode = delete"  delete
 12  "PRAGMA journal_mode"                delete
 13  "PRAGMA main.journal_mode"           delete
 14  "PRAGMA main.journal_mode = wal"     wal
 15  "PRAGMA journal_mode"                wal
 16  "PRAGMA main.journal_mode"           wal

CREATE TABLE t1(a, b);
  PRAGMA journal_mode = WAL;
  ATTACH 'test.db2' AS two;
  CREATE TABLE two.t2(a, b);

wal
delete
delete

wal
delete

delete

wal
wal
PRAGMA two.journal_mode=WAL;
     PRAGMA two.journal_mode;
  
wal

wal
wal

wal
wal
delete
delete
delete
wal
wal
wal
