PRAGMA cache_size = 2000;
    PRAGMA page_size = 1024;
    PRAGMA auto_vacuum = off;
    PRAGMA synchronous = normal;
    PRAGMA journal_mode = WAL;
    PRAGMA wal_autocheckpoint = 0;
    BEGIN;
      CREATE TABLE t1(x);
      INSERT INTO t1 VALUES( a_string(800) );                  /*    1 */
      INSERT INTO t1 SELECT a_string(800) FROM t1;             /*    2 */
      INSERT INTO t1 SELECT a_string(800) FROM t1;             /*    4 */
      INSERT INTO t1 SELECT a_string(800) FROM t1;             /*    8 */
      INSERT INTO t1 SELECT a_string(800) FROM t1;             /*   16 */
      INSERT INTO t1 SELECT a_string(800) FROM t1;             /*   32 */
      INSERT INTO t1 SELECT a_string(800) FROM t1;             /*   64 */
      INSERT INTO t1 SELECT a_string(800) FROM t1;             /*  128*/
      INSERT INTO t1 SELECT a_string(800) FROM t1;             /*  256 */
      INSERT INTO t1 SELECT a_string(800) FROM t1;             /*  512 */
      INSERT INTO t1 SELECT a_string(800) FROM t1;             /* 1024 */
      INSERT INTO t1 SELECT a_string(800) FROM t1;             /* 2048 */
      INSERT INTO t1 SELECT a_string(800) FROM t1 LIMIT 1970;  /* 4018 */
    COMMIT;
    PRAGMA cache_size = 10;
  
UPDATE t1 SET x = $str WHERE rowid = $i 
BEGIN;
        INSERT INTO t1 SELECT a_string(800) FROM t1 LIMIT 100;
      ROLLBACK;
      PRAGMA integrity_check;
    
SELECT count(*) FROM t1 
SELECT x FROM t1 WHERE rowid = $i 
PRAGMA integrity_check 
SELECT count(*) FROM t1 
SELECT x FROM t1 WHERE rowid = $i 
PRAGMA integrity_check 
PRAGMA page_size = 1024;
      PRAGMA journal_mode = WAL;
    
CREATE TABLE t1(a, b);
      INSERT INTO t1 VALUES(1, 'one');
      BEGIN;
        SELECT * FROM t1;
    
CREATE TABLE t2(a, b);
      INSERT INTO t2 VALUES(2, 'two');
      BEGIN;
        SELECT * FROM t2;
    
CREATE TABLE t3(a, b);
      INSERT INTO t3 VALUES(3, 'three');
      BEGIN;
        SELECT * FROM t3;
    
COMMIT;
      PRAGMA wal_checkpoint;
    
COMMIT;
      PRAGMA wal_checkpoint;
    
COMMIT;
      PRAGMA wal_checkpoint;
    
PRAGMA journal_mode = WAL 
CREATE TABLE filler(a,b,c); 
CREATE TABLE x(y);
      INSERT INTO x VALUES('z');
      PRAGMA wal_checkpoint;
    
PRAGMA journal_mode = WAL;
    CREATE TABLE t1(a, b);
    INSERT INTO t1 VALUES(1, 2);
    INSERT INTO t1 VALUES(3, 4);
  
SELECT * FROM t1 
SELECT * FROM t1 
PRAGMA auto_vacuum = off 
PRAGMA journal_mode = WAL 
CREATE TABLE t1(a, b);
    INSERT INTO t1 VALUES('o', 't');
    INSERT INTO t1 VALUES('t', 'f');
  
BEGIN ; SELECT * FROM t1 
PRAGMA wal_checkpoint 
BEGIN;
    SELECT * FROM t1;
  
COMMIT 
PRAGMA wal_checkpoint 
BEGIN;
    SELECT * FROM t1;
  
PRAGMA auto_vacuum = off 
PRAGMA journal_mode = WAL 
CREATE TABLE t1(a, b);
    INSERT INTO t1 VALUES('h', 'h');
    INSERT INTO t1 VALUES('l', 'b');
  
PRAGMA wal_checkpoint 
INSERT INTO t1 VALUES('b', 'c'); 
PRAGMA wal_checkpoint 
INSERT INTO t1 VALUES('n', 'o'); 
PRAGMA journal_mode = WAL;
    CREATE TABLE blue(red PRIMARY KEY, green);
  
SELECT * FROM blue 
INSERT INTO blue VALUES(1, 2) 
INSERT INTO blue VALUES(3, 4) 
SELECT * FROM blue 
INSERT INTO blue VALUES(5, 6) 
SELECT * FROM blue 
PRAGMA page_size = 1024;
    PRAGMA journal_mode = WAL;
    CREATE TABLE whoami(x);
    INSERT INTO whoami VALUES('nobody');
  
UPDATE whoami SET x = $c 
BEGIN;
      SELECT * FROM whoami
    
SELECT * FROM whoami 
PRAGMA wal_checkpoint 
PRAGMA wal_checkpoint 
PRAGMA page_size = 1024;
      CREATE TABLE t1(x);
      PRAGMA journal_mode = WAL;
      PRAGMA wal_autocheckpoint = 100000;
      BEGIN;
        INSERT INTO t1 VALUES(randomblob(800));
        INSERT INTO t1 SELECT randomblob(800) FROM t1;   -- 2
        INSERT INTO t1 SELECT randomblob(800) FROM t1;   -- 4
        INSERT INTO t1 SELECT randomblob(800) FROM t1;   -- 8
        INSERT INTO t1 SELECT randomblob(800) FROM t1;   -- 16
        INSERT INTO t1 SELECT randomblob(800) FROM t1;   -- 32
        INSERT INTO t1 SELECT randomblob(800) FROM t1;   -- 64
        INSERT INTO t1 SELECT randomblob(800) FROM t1;   -- 128
        INSERT INTO t1 SELECT randomblob(800) FROM t1;   -- 256
        INSERT INTO t1 SELECT randomblob(800) FROM t1;   -- 512
        INSERT INTO t1 SELECT randomblob(800) FROM t1;   -- 1024
        INSERT INTO t1 SELECT randomblob(800) FROM t1;   -- 2048
        INSERT INTO t1 SELECT randomblob(800) FROM t1;   -- 4096
        INSERT INTO t1 SELECT randomblob(800) FROM t1;   -- 8192
      COMMIT;
      CREATE INDEX i1 ON t1(x);
    
PRAGMA integrity_check
