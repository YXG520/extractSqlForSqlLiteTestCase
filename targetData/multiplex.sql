SQLITE_ERROR
SQLITE_OK
SQLITE_MISUSE
SQLITE_OK
SQLITE_OK
SQLITE_OK
SQLITE_OK
SQLITE_OK
SQLITE_OK

SQLITE_OK
SQLITE_OK

0
0
0
0
0
SQLITE_OK
SQLITE_OK

SQLITE_OK
SQLITE_OK
SQLITE_OK
SQLITE_OK
SQLITE_OK

0
0
0
SQLITE_OK
SQLITE_OK

1
1
SQLITE_OK
PRAGMA page_size=1024;
    PRAGMA auto_vacuum=OFF;
    PRAGMA journal_mode=DELETE;
  
CREATE TABLE t1(a, b);
    INSERT INTO t1 VALUES(1, randomblob(1100));
    INSERT INTO t1 VALUES(2, randomblob(1100));
  
INSERT INTO t1 VALUES(3, randomblob(1100)) 
PRAGMA multiplex_enabled;
  PRAGMA multiplex_filecount;
  PRAGMA multiplex_chunksize;

INSERT INTO t1 VALUES(3, randomblob(1100)) 
INSERT INTO t1 VALUES(3, randomblob(1100)) 
sqlite3_multiplex_shutdown() called while database connections are still open
PRAGMA page_size = 1024;
    PRAGMA journal_mode = delete;
    PRAGMA auto_vacuum = off;
    CREATE TABLE t1(a PRIMARY KEY, b);
  
INSERT INTO t1 VALUES(1, 'one');
    INSERT INTO t1 VALUES(2, randomblob(4000));
    INSERT INTO t1 VALUES(3, 'three');
    INSERT INTO t1 VALUES(4, randomblob(4000));
    INSERT INTO t1 VALUES(5, 'five');
    INSERT INTO t1 VALUES(6, randomblob($g_chunk_size));
    INSERT INTO t1 VALUES(7, randomblob($g_chunk_size));
  
PRAGMA multiplex_enabled;
  PRAGMA multiplex_filecount;
  PRAGMA multiplex_chunksize;

PRAGMA multiplex_filecount;
  PRAGMA multiplex_chunksize;

CREATE TABLE t1(a PRIMARY KEY, b);
        INSERT INTO t1 VALUES(1, 'one');
        INSERT INTO t1 VALUES(2, randomblob($g_chunk_size));
      
SQLITE_OK

0
0
CREATE TABLE t1(a PRIMARY KEY, b);
    INSERT INTO t1 VALUES(1, randomblob(1000));
  
INSERT INTO t1 VALUES(2, randomblob(65536));
  
SQLITE_OK
PRAGMA page_size = 1024;
    PRAGMA journal_mode = delete;
    PRAGMA auto_vacuum = off;
    CREATE TABLE t1(a PRIMARY KEY, b);
    INSERT INTO t1 VALUES(1, 'one');
  
CREATE TABLE t2(a, b) 
CREATE TABLE t3(a, b) 
CREATE TABLE t3(a, b) 
PRAGMA page_size = 1024;
      PRAGMA journal_mode = delete;
      PRAGMA auto_vacuum = off;
      CREATE TABLE t1(a, b);
    




INSERT INTO t1 VALUES(randomblob(500), randomblob(500)) 
INSERT INTO t1 VALUES(randomblob(500), randomblob(500)) 
INSERT INTO t1 VALUES(randomblob(500), randomblob(500)) 
INSERT INTO t1 VALUES(randomblob(500), randomblob(500)) 
INSERT INTO t1 VALUES(randomblob(500), randomblob(500)) 
INSERT INTO t1 VALUES(randomblob(500), randomblob(500)) 
INSERT INTO t1 VALUES(randomblob(500), randomblob(500)) 
INSERT INTO t1 VALUES(randomblob(500), randomblob(500)) 
INSERT INTO t2 VALUES(zeroblob(200000))
INSERT INTO t2 VALUES(zeroblob(200000))
PRAGMA auto_vacuum = 1;
    PRAGMA page_size = 1024;
    CREATE TABLE t1(a, b);
    INSERT INTO t1 VALUES(10, zeroblob(1200));
  
DELETE FROM t1 
PRAGMA page_size=1024;
    PRAGMA journal_mode=DELETE;
    PRAGMA auto_vacuum=OFF;
  
CREATE TABLE t1(a, b);
    INSERT INTO t1 VALUES(1, randomblob($g_chunk_size));
    INSERT INTO t1 VALUES(2, randomblob($g_chunk_size));
  
VACUUM 
