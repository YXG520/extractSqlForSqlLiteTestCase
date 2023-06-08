eval sqlite3 $args
  [lindex $args 0] eval { PRAGMA auto_vacuum = 0 
PRAGMA auto_vacuum = 0 
PRAGMA synchronous = normal 
PRAGMA journal_mode = wal 
BEGIN;
    CREATE TABLE t1(a, b); 
  
SELECT * FROM sqlite_master 
INSERT INTO t1 VALUES(1, 2) 
INSERT INTO t1 VALUES(3, 4) 
INSERT INTO t1 VALUES(5, 6) 
INSERT INTO t1 VALUES(7, 8) 
INSERT INTO t1 VALUES(9, 10) 
SELECT * FROM t1 
BEGIN; SELECT * FROM t1 
INSERT INTO t1 VALUES(11, 12) 
SELECT * FROM t1 
SELECT * FROM t1 
INSERT INTO t1 VALUES(13, 14) 
SELECT * FROM t1 
SELECT * FROM t1 
COMMIT; SELECT * FROM t1 
BEGIN; DELETE FROM t1 
SELECT * FROM t1 
SELECT * FROM t1 
ROLLBACK 
SELECT * FROM t1 
DELETE FROM t1;
    BEGIN;
      INSERT INTO t1 VALUES('a', 'b');
      SAVEPOINT sp;
        INSERT INTO t1 VALUES('c', 'd');
        SELECT * FROM t1;
  
ROLLBACK TO sp;
      SELECT * FROM t1;
  
COMMIT;
    SELECT * FROM t1;
  
SELECT * FROM t1 
PRAGMA cache_size = 10 
CREATE TABLE t2(a, b);
    INSERT INTO t2 VALUES(blob(400), blob(400));
    SAVEPOINT tr;
      INSERT INTO t2 SELECT blob(400), blob(400) FROM t2; /*  2 */
      INSERT INTO t2 SELECT blob(400), blob(400) FROM t2; /*  4 */
      INSERT INTO t2 SELECT blob(400), blob(400) FROM t2; /*  8 */
      INSERT INTO t2 SELECT blob(400), blob(400) FROM t2; /* 16 */
      INSERT INTO t2 SELECT blob(400), blob(400) FROM t2; /* 32 */
      INSERT INTO t1 SELECT blob(400), blob(400) FROM t1; /*  2 */
      INSERT INTO t1 SELECT blob(400), blob(400) FROM t1; /*  4 */
      INSERT INTO t1 SELECT blob(400), blob(400) FROM t1; /*  8 */
      INSERT INTO t1 SELECT blob(400), blob(400) FROM t1; /* 16 */
      INSERT INTO t1 SELECT blob(400), blob(400) FROM t1; /* 32 */
      SELECT count(*) FROM t2;
  
ROLLBACK TO tr 
INSERT INTO t1 VALUES('x', 'y');
    RELEASE tr;
  
SELECT count(*) FROM t2 
SELECT count(*) FROM t2 ; SELECT count(*) FROM t1 
PRAGMA integrity_check 
PRAGMA journal_mode = WAL;
    CREATE TABLE t1(a, b);
    INSERT INTO t1 VALUES('a', 'b');
  
SELECT * FROM t1 
PRAGMA cache_size = 10 
CREATE TABLE t2(a, b);
    BEGIN;
    INSERT INTO t2 VALUES(blob(400), blob(400));
    SAVEPOINT tr;
      INSERT INTO t2 SELECT blob(400), blob(400) FROM t2; /*  2 */
      INSERT INTO t2 SELECT blob(400), blob(400) FROM t2; /*  4 */
      INSERT INTO t2 SELECT blob(400), blob(400) FROM t2; /*  8 */
      INSERT INTO t2 SELECT blob(400), blob(400) FROM t2; /* 16 */
      INSERT INTO t2 SELECT blob(400), blob(400) FROM t2; /* 32 */
      INSERT INTO t1 SELECT blob(400), blob(400) FROM t1; /*  2 */
      INSERT INTO t1 SELECT blob(400), blob(400) FROM t1; /*  4 */
      INSERT INTO t1 SELECT blob(400), blob(400) FROM t1; /*  8 */
      INSERT INTO t1 SELECT blob(400), blob(400) FROM t1; /* 16 */
      INSERT INTO t1 SELECT blob(400), blob(400) FROM t1; /* 32 */
      SELECT count(*) FROM t2;
  
ROLLBACK TO tr 
INSERT INTO t1 VALUES('x', 'y');
    RELEASE tr;
    COMMIT;
  
SELECT count(*) FROM t2 ; SELECT count(*) FROM t1 
SELECT count(*) FROM t2 ; SELECT count(*) FROM t1 
PRAGMA integrity_check 
DELETE FROM t2;
    PRAGMA wal_checkpoint;
    BEGIN;
      INSERT INTO t2 VALUES('w', 'x');
      SAVEPOINT save;
        INSERT INTO t2 VALUES('y', 'z');
      ROLLBACK TO save;
    COMMIT;
  
SELECT * FROM t2 
CREATE TEMP TABLE t2(a, b);
    INSERT INTO t2 VALUES(1, 2);
  
BEGIN;
      INSERT INTO t2 VALUES(3, 4);
      SELECT * FROM t2;
  
ROLLBACK;
    SELECT * FROM t2;
  
CREATE TEMP TABLE t3(x UNIQUE);
    BEGIN;
      INSERT INTO t2 VALUES(3, 4);
      INSERT INTO t3 VALUES('abc');
  
INSERT INTO t3 VALUES('abc') 
COMMIT;
    SELECT * FROM t2;
  
PRAGMA page_size = 1024;
    CREATE TABLE t1(a, b);
    INSERT INTO t1 VALUES(1, 2);
  
PRAGMA wal_checkpoint 
PRAGMA auto_vacuum = 1;
    PRAGMA journal_mode = wal;
    PRAGMA auto_vacuum;
  
PRAGMA page_size = 1024;
    CREATE TABLE t1(x);
    INSERT INTO t1 VALUES(blob(900));
    INSERT INTO t1 VALUES(blob(900));
    INSERT INTO t1 SELECT blob(900) FROM t1;       /*  4 */
    INSERT INTO t1 SELECT blob(900) FROM t1;       /*  8 */
    INSERT INTO t1 SELECT blob(900) FROM t1;       /* 16 */
    INSERT INTO t1 SELECT blob(900) FROM t1;       /* 32 */
    INSERT INTO t1 SELECT blob(900) FROM t1;       /* 64 */
    PRAGMA wal_checkpoint;
  
DELETE FROM t1 WHERE rowid<54;
    PRAGMA wal_checkpoint;
  
PRAGMA cache_size=2000;
    CREATE TABLE t1(x PRIMARY KEY);
    INSERT INTO t1 VALUES(blob(900));
    INSERT INTO t1 VALUES(blob(900));
    INSERT INTO t1 SELECT blob(900) FROM t1;       /*  4 */
    INSERT INTO t1 SELECT blob(900) FROM t1;       /*  8 */
    INSERT INTO t1 SELECT blob(900) FROM t1;       /* 16 */
    INSERT INTO t1 SELECT blob(900) FROM t1;       /* 32 */
    INSERT INTO t1 SELECT blob(900) FROM t1;       /* 64 */
    INSERT INTO t1 SELECT blob(900) FROM t1;       /* 128 */
    INSERT INTO t1 SELECT blob(900) FROM t1;       /* 256 */
  
PRAGMA integrity_check 
PRAGMA integrity_check 
PRAGMA wal_checkpoint 
PRAGMA integrity_check 
PRAGMA auto_vacuum = 0;
      PRAGMA journal_mode = wal;
      CREATE TABLE t1(a, b);
      INSERT INTO t1 VALUES(1, 2);
      SELECT * FROM t1;
    
BEGIN; INSERT INTO t1 VALUES(3, 4); 
SELECT * FROM t1
COMMIT 
SELECT * FROM t1
BEGIN ; SELECT * FROM t1
INSERT INTO t1 VALUES(5, 6); 
SELECT * FROM t1
SELECT * FROM t1
BEGIN; INSERT INTO t1 VALUES(7, 8) ; 
INSERT INTO t1 VALUES(9, 10) 
BEGIN ; SELECT * FROM t1 
INSERT INTO t1 VALUES(9, 10) 
COMMIT 
BEGIN 
INSERT INTO t1 VALUES(9, 10) 
COMMIT 
SELECT * FROM t1 
BEGIN; SELECT * FROM t1 
PRAGMA wal_checkpoint 
INSERT INTO t1 VALUES(11, 12) 
SELECT * FROM t1
PRAGMA wal_checkpoint 
COMMIT; BEGIN; SELECT * FROM t1; 
PRAGMA wal_checkpoint 
PRAGMA wal_checkpoint 
BEGIN; SELECT * FROM t1 
INSERT INTO t1 VALUES(13, 14) 
SELECT * FROM t1 
SELECT * FROM t1 
PRAGMA wal_checkpoint 
BEGIN; SELECT * FROM t1; 
PRAGMA wal_checkpoint 
INSERT INTO t1 VALUES(15, 16) 
INSERT INTO t1 VALUES(17, 18) 
SELECT * FROM t1 
INSERT INTO t1 VALUES(19, 20) 
PRAGMA wal_checkpoint 
PRAGMA wal_checkpoint 
BEGIN ; SELECT * FROM t1 
INSERT INTO t1 VALUES(21, 22) 
INSERT INTO t1 VALUES(23, 24) 
INSERT INTO t1 VALUES(23, 24) 
SELECT * FROM t1 ; COMMIT 
SELECT * FROM t1 
DELETE FROM t1;
      INSERT INTO t1 VALUES('a', 'b');
      INSERT INTO t1 VALUES('c', 'd');
    
BEGIN;
        SELECT * FROM t1;
    
PRAGMA wal_checkpoint 
INSERT INTO t1 VALUES('e', 'f') 
SELECT * FROM t1 
PRAGMA wal_checkpoint 
PRAGMA cache_size = 10;
    PRAGMA page_size = 1024;
    CREATE TABLE t1(x PRIMARY KEY);
  
PRAGMA wal_checkpoint 
INSERT INTO t1 VALUES( blob(900) ) 
BEGIN;
      INSERT INTO t1 SELECT blob(900) FROM t1;   -- 2
      INSERT INTO t1 SELECT blob(900) FROM t1;   -- 4
      INSERT INTO t1 SELECT blob(900) FROM t1;   -- 8
      INSERT INTO t1 SELECT blob(900) FROM t1;   -- 16
  
SELECT count(*) FROM t1;
    PRAGMA integrity_check;
  
SELECT count(*) FROM t1;
    PRAGMA integrity_check;
  
PRAGMA wal_checkpoint 
PRAGMA cache_size = 10;
    BEGIN;
      INSERT INTO t1 SELECT blob(900) FROM t1;   -- 32
      SELECT count(*) FROM t1;
  
SELECT count(*) FROM t1;
    ROLLBACK;
    SELECT count(*) FROM t1;
  
INSERT INTO t1 VALUES( blob(900) );
    SELECT count(*) FROM t1;
    PRAGMA integrity_check;
  
PRAGMA page_size = 1024;
    CREATE TABLE t1(x, y);
    CREATE TABLE t2(x, y);
    INSERT INTO t1 VALUES('A', 1);
  
PRAGMA synchronous = normal;
    UPDATE t1 SET y = 0 WHERE x = 'A';
  
INSERT INTO t2 VALUES('B', 1) 
SELECT * FROM t2 
PRAGMA wal_checkpoint;
    UPDATE t2 SET y = 2 WHERE x = 'B'; 
    PRAGMA wal_checkpoint;
    UPDATE t1 SET y = 1 WHERE x = 'A';
    PRAGMA wal_checkpoint;
    UPDATE t1 SET y = 0 WHERE x = 'A';
  
SELECT * FROM t2 
SELECT * FROM t2 
PRAGMA journal_mode = WAL;
    CREATE TABLE t1(a PRIMARY KEY, b);
    INSERT INTO t1 VALUES(randomblob(10), randomblob(100));
    INSERT INTO t1 SELECT randomblob(10), randomblob(100) FROM t1;
    INSERT INTO t1 SELECT randomblob(10), randomblob(100) FROM t1;
    INSERT INTO t1 SELECT randomblob(10), randomblob(100) FROM t1;
  
PRAGMA wal_checkpoint;
    CREATE INDEX i1 on t1(b);
  
PRAGMA auto_vacuum = 0;
    PRAGMA page_size = 1024;
    PRAGMA journal_mode = WAL;
  
CREATE TABLE t1(a, b);
    INSERT INTO t1 VALUES(1, 2);
  
BEGIN;
    INSERT INTO t1 VALUES(3, 4);
  
BEGIN;
    SELECT * FROM t1;
  
COMMIT 
COMMIT 
ATTACH 'test2.db' AS aux;
      PRAGMA main.auto_vacuum = 0;
      PRAGMA aux.auto_vacuum = 0;
      PRAGMA main.journal_mode = WAL;
      PRAGMA aux.journal_mode = WAL;
      PRAGMA main.synchronous = NORMAL;
      PRAGMA aux.synchronous = NORMAL;
    
CREATE TABLE main.t1(a, b, PRIMARY KEY(a, b));
      CREATE TABLE aux.t2(a, b, PRIMARY KEY(a, b));

      INSERT INTO t2 VALUES(1, randomblob(1000));
      INSERT INTO t2 VALUES(2, randomblob(1000));
      INSERT INTO t1 SELECT * FROM t2;
    
PRAGMA auto_vacuum = 0;
      PRAGMA page_size = 512;
      PRAGMA cache_size = -2000;
      PRAGMA journal_mode = WAL;
      PRAGMA synchronous = FULL;
    
BEGIN;
      CREATE TABLE t(x);
    
INSERT INTO t VALUES(randomblob(400)) 
PRAGMA page_size = 1024;
    PRAGMA auto_vacuum = 0;
    PRAGMA journal_mode = WAL;
    PRAGMA synchronous = OFF;

    CREATE TABLE t1(a, b, UNIQUE(a, b));
    INSERT INTO t1 VALUES(0, 0);
    PRAGMA wal_checkpoint;

    INSERT INTO t1 VALUES(1, 2);          -- frames 1 and 2
    INSERT INTO t1 VALUES(3, 4);          -- frames 3 and 4
    INSERT INTO t1 VALUES(5, 6);          -- frames 5 and 6
  
SELECT * FROM t1;
      PRAGMA integrity_check; 
    
set works 0
  
PRAGMA journal_mode = WAL;
    CREATE TABLE t1(a, b);
    INSERT INTO t1 VALUES(1, 2);
    INSERT INTO t1 VALUES(3, 4);
  
SELECT * FROM t1 
INSERT INTO t1 VALUES(5, 6);
    SELECT * FROM t1;
  
SELECT * FROM t1 
PRAGMA journal_mode = WAL;
      CREATE TABLE t1(x);
      INSERT INTO t1 VALUES(randomblob(900));
      SELECT count(*) FROM t1;
    
PRAGMA wal_checkpoint 
SELECT count(*) FROM t1 
SELECT count(*) FROM t1 
PRAGMA journal_mode = WAL;
    CREATE TABLE t1(a, b);
    INSERT INTO t1 VALUES(1, 2);
    INSERT INTO t1 VALUES(3, 4);
    INSERT INTO t1 VALUES(5, 6);
    INSERT INTO t1 VALUES(7, 8);
    INSERT INTO t1 VALUES(9, 10);
    INSERT INTO t1 VALUES(11, 12);
  
PRAGMA cache_size = 10;
    PRAGMA wal_checkpoint;
    BEGIN;
      SAVEPOINT s;
        INSERT INTO t1 SELECT randomblob(900), randomblob(900) FROM t1;
      ROLLBACK TO s;
    COMMIT;
  
SELECT * FROM t1 
PRAGMA integrity_check 
PRAGMA main.page_size = %PGSZ%;
        PRAGMA auto_vacuum = 0;
        PRAGMA journal_mode = WAL;
        CREATE TABLE t1(x UNIQUE);
        INSERT INTO t1 SELECT randomblob(800);
        INSERT INTO t1 SELECT randomblob(800);
        INSERT INTO t1 SELECT randomblob(800);
      
ok
PRAGMA wal_checkpoint
CREATE TABLE t1(a, b);
    PRAGMA journal_mode = WAL;
    INSERT INTO t1 VALUES(1, 2);
    INSERT INTO t1 VALUES(3, 4);
  
SELECT * FROM t1 
SELECT * FROM t1 
PRAGMA auto_vacuum = 2;
    PRAGMA journal_mode = WAL;
    PRAGMA page_size = 1024;
    CREATE TABLE t1(x);
    INSERT INTO t1 VALUES(randomblob(5000));
    INSERT INTO t1 SELECT * FROM t1;
    INSERT INTO t1 SELECT * FROM t1;
    INSERT INTO t1 SELECT * FROM t1;
    INSERT INTO t1 SELECT * FROM t1;
  
DELETE FROM t1;
      PRAGMA wal_checkpoint;
    
PRAGMA cache_size = 200;
      PRAGMA incremental_vacuum;
      PRAGMA wal_checkpoint;
    
do_test wal-26.1.$i {
    file delete attached-$i.db
    db eval "ATTACH 'attached-$i.db' AS a$i;"
    db eval "PRAGMA a$i.journal_mode=WAL;"
    db eval "CREATE TABLE a$i.t$i (x);"
    db eval "INSERT INTO t$i VALUES(zeroblob(10000));"
    db eval "DELETE FROM t$i;"
    db eval "INSERT INTO t$i VALUES(randomblob(10000));"
    expr {[file size attached-$i.db-wal]>10000
do_test wal-26.2.$i {
    db eval "PRAGMA a$i.wal_checkpoint(TRUNCATE);"
    file size attached-$i.db-wal
  
