SELECT count(*) FROM sqlite_master
  
SELECT count(*) FROM sqlite_master
  
SELECT count(*) FROM sqlite_master
  
SELECT count(*) FROM sqlite_master
  
SELECT count(*) FROM sqlite_master
    
PRAGMA page_size = 1024;
  PRAGMA auto_vacuum = 0;
  CREATE TABLE t1(a);
  CREATE INDEX i1 ON t1(a);
  INSERT INTO t1 VALUES(a_string(3000));
  CREATE TABLE t2(a);
  INSERT INTO t2 VALUES(1);

INSERT INTO t1 VALUES(a_string(3000)) 

PRAGMA page_size = 1024;
  PRAGMA auto_vacuum = 0;
  CREATE TABLE t1(a);
  CREATE INDEX i1 ON t1(a);
  INSERT INTO t1 VALUES(a_string(3000));
  CREATE TABLE t2(a);
  INSERT INTO t2 VALUES(1);

INSERT INTO t1 VALUES(a_string(3000)) 
PRAGMA integrity_check;
  BEGIN;
    INSERT INTO t2 VALUES(2);
    SAVEPOINT a;
      INSERT INTO t2 VALUES(3);
    ROLLBACK TO a;


PRAGMA auto_vacuum = 1;
  CREATE TABLE t1(a, b);

DROP TABLE t1 
SELECT * FROM sqlite_master;
  PRAGMA integrity_check;

PRAGMA auto_vacuum = 1;
  CREATE TABLE t1(x, y);
  CREATE TABLE t2(x, y);

  INSERT INTO t1 VALUES(randomblob(100), randomblob(100));
  INSERT INTO t1 VALUES(randomblob(100), randomblob(100));
  INSERT INTO t1 VALUES(randomblob(100), randomblob(100));
  INSERT INTO t1 VALUES(randomblob(100), randomblob(100));
  INSERT INTO t1 VALUES(randomblob(100), randomblob(100));
  INSERT INTO t1 VALUES(randomblob(100), randomblob(100));

  INSERT INTO t2 SELECT randomblob(100), randomblob(100) FROM t1;
  INSERT INTO t2 SELECT randomblob(100), randomblob(100) FROM t1;
  INSERT INTO t2 SELECT randomblob(100), randomblob(100) FROM t1;
  INSERT INTO t2 SELECT randomblob(100), randomblob(100) FROM t1;

INSERT INTO t2 SELECT * FROM t1 
