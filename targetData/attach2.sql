ATTACH 'test2.db' AS t2;
  
lappend list $idx $name
  
ATTACH 'test2.db' AS t2;
  
SELECT name FROM t2.sqlite_master;
  
SELECT name FROM t2.sqlite_master;
  
SELECT name FROM main.sqlite_master;
  
BEGIN;
    INSERT INTO t1 VALUES(8,9);
  
SELECT * FROM t1
  
INSERT INTO t2.t1 VALUES(1,2);
  
rollback
SELECT * FROM t1
  
COMMIT
  
PRAGMA lock_status
ATTACH 'test2.db' as file2
ATTACH 'test2.db' as file2
BEGIN
SELECT * FROM t1
SELECT * FROM t1
INSERT INTO t1 VALUES(1, 2)
  
BEGIN
INSERT INTO file2.t1 VALUES(1, 2)
SELECT * FROM file2.t1;
  
UPDATE file2.t1 SET a=0;
  
INSERT INTO t1 VALUES(1, 2)
  
SELECT * FROM t1
INSERT INTO t1 VALUES(1, 2)
  
COMMIT
COMMIT
COMMIT
SELECT * FROM file2.t1
INSERT INTO t1 VALUES(1, 2)
SELECT * FROM t1
ATTACH 'test.db2' AS aux;
  
BEGIN;
    CREATE TABLE tbl(a, b, c);
    CREATE TABLE aux.tbl(a, b, c);
    COMMIT;
  
BEGIN;
    DROP TABLE aux.tbl;
    DROP TABLE tbl;
    ROLLBACK;
  
BEGIN;
  
ATTACH 'test3.db' as aux2;
    DETACH aux2;
  
DETACH aux;
  
PRAGMA encoding = 'utf16';
    CREATE TABLE t2(x);
    INSERT INTO t2 VALUES('text2');
  
PRAGMA encoding = 'utf16';
    CREATE TABLE t3(x);
    INSERT INTO t3 VALUES('text3');
  
PRAGMA encoding = 'utf8';
    CREATE TABLE t4(x);
    INSERT INTO t4 VALUES('text4');
  
PRAGMA encoding = 'utf16';
    ATTACH 'test.db2' AS aux;
    SELECT * FROM t2;
  
ATTACH 'test.db4' AS aux;
    SELECT * FROM t4;
  
ATTACH 'test.db3' AS aux;
    SELECT * FROM t3;
    SELECT * FROM t2;
  
ATTACH 'test.db4' AS aux;
  
