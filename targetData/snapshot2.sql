PRAGMA journal_mode = wal;
  CREATE TABLE t1(a, b, c);
  INSERT INTO t1 VALUES(1, 2, 3);
  INSERT INTO t1 VALUES(4, 5, 6);

1 2 3 4 5 6
INSERT INTO t1 VALUES(7, 8, 9) 
1 2 3 4 5 6 7 8 9
INSERT INTO t1 VALUES(10, 11, 12) 
CREATE TABLE t1(x);
  PRAGMA journal_mode = wal;
  INSERT INTO t1 VALUES(1);
  INSERT INTO t1 VALUES(2);

SELECT * FROM sqlite_master
INSERT INTO t1 VALUES(3); 
SELECT * FROM sqlite_master
SELECT * FROM t1 
SELECT * FROM t1 
PRAGMA wal_checkpoint 
PRAGMA journal_mode = wal;
  CREATE TABLE t1(x, y);
  INSERT INTO t1 VALUES('a', 'b');
  INSERT INTO t1 VALUES('c', 'd');

INSERT INTO t1 VALUES('e', 'f') 
SELECT * FROM t1;

BEGIN;
      SELECT * FROM sqlite_master;
  
ATTACH 'test.db2' AS aux;
    PRAGMA aux.journal_mode = wal;
    CREATE TABLE aux.t2(x, y);
  
PRAGMA aux.journal_mode = delete;
  
CREATE TABLE t2(x);
  PRAGMA journal_mode = wal;
  INSERT INTO t2 VALUES('abc');
  INSERT INTO t2 VALUES('def');
  INSERT INTO t2 VALUES('ghi');

SELECT * FROM t2;
    BEGIN;
  
PRAGMA wal_checkpoint = RESTART 
INSERT INTO t2 VALUES('jkl') 
