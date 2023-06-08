PRAGMA page_size = 1024;
    PRAGMA auto_vacuum = 0;
    PRAGMA journal_mode = wal;
    PRAGMA synchronous = normal;
    CREATE TABLE t1(i PRIMARY KEY, j);
  
INSERT INTO t1 VALUES(1, 'one') 
INSERT INTO t1 VALUES(2, 'two') 
PRAGMA wal_checkpoint 
CREATE TABLE t2(a, b) 
PRAGMA wal_checkpoint 
CREATE TABLE t3(a PRIMARY KEY, b) 
PRAGMA synchronous = NORMAL 
PRAGMA wal_autocheckpoint 
PRAGMA wal_autocheckpoint = 10
PRAGMA wal_autocheckpoint 
4 "CREATE TABLE t4(x PRIMARY KEY, y)"   6   3
  5 "INSERT INTO t4 VALUES(1, 'one')"     6   5
  6 "INSERT INTO t4 VALUES(2, 'two')"     6   7
  7 "INSERT INTO t4 VALUES(3, 'three')"   6   9
  8 "INSERT INTO t4 VALUES(4, 'four')"    8  11
  9 "INSERT INTO t4 VALUES(5, 'five')"    8  11

