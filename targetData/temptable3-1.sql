

  PRAGMA cache_size = 1;
  PRAGMA page_size = 1024;
  PRAGMA auto_vacuum = 2;
  CREATE TABLE t1(x);
  INSERT INTO t1 VALUES( randomblob(800) );
  INSERT INTO t1 VALUES( randomblob(800) );
  CREATE TABLE t2(x);
  PRAGMA integrity_check;




  PRAGMA cache_size = 1;
  PRAGMA auto_vacuum = 2;
  CREATE TABLE t1(x);
  CREATE TABLE t2(x UNIQUE);
  INSERT INTO t2 VALUES(1), (2), (3);
  DROP TABLE t1;
  PRAGMA integrity_check;

