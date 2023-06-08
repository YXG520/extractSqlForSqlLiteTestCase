CREATE TABLE t1(a, b);
  INSERT INTO t1 VALUES(1, 2);
  PRAGMA journal_mode = DELETE;

unlock
database is locked
INSERT INTO t1 VALUES(3, 4);
  PRAGMA journal_mode = WAL;

unlock
database is locked
database is locked
1 -1 -1
INSERT INTO t1 VALUES(3, 4) 
unlock
database is locked
database is locked
1 -1 -1
0 1 1
unlock
database is locked
database is locked
1 -1 -1
CREATE TABLE t1(a, b);
      PRAGMA journal_mode = WAL;
      INSERT INTO t1 VALUES(1, 2);
    
BEGIN ; SELECT * FROM t1 
BEGIN ; INSERT INTO t1 VALUES(3, 4) 
BEGIN ; SELECT * FROM t1 
database is locked
INSERT INTO t1 VALUES(5, 6) 
1 -1 -1
BEGIN ; SELECT * FROM t1 
BEGIN ; INSERT INTO t1 VALUES(5, 6) 
BEGIN ; SELECT * FROM t1 
1 2 3 4 5 6
1 2 3 4 5 6
unlock
1 2 3 4 5 6
1 2 3 4 5 6
1 2 3 4 5 6
ATTACH 'test.db2' AS aux;
  PRAGMA aux.journal_mode = wal;
  CREATE TABLE aux.t2(x, y);
  INSERT INTO aux.t2 VALUES('a', 'b');
  PRAGMA schema_version = 450;
  DETACH aux;

  PRAGMA main.journal_mode = wal;
  CREATE TABLE t1(a, b);
  INSERT INTO t1 VALUES(1, 2);
  INSERT INTO t1 VALUES(3, 4);
  SELECT * FROM t1;

no such table: t1
a b
1 2 3 4
no such table: t2
0 0 0
no such table: t1
a b
1 2 3 4
no such table: t2
PRAGMA journal_mode = delete;
    VACUUM;
    PRAGMA journal_mode = wal;
    INSERT INTO t1 VALUES(5, 6);
  
PRAGMA journal_mode = delete;
    PRAGMA page_size = 512;
    VACUUM;
    PRAGMA journal_mode = wal;
    INSERT INTO t1 VALUES(5, 6);
  
no such table: t1
a b
1 2 3 4 5 6
no such table: t2
