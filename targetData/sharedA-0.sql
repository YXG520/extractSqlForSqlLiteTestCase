

    CREATE TABLE t1(x);
    INSERT INTO t1 VALUES(randomblob(100));
    INSERT INTO t1 SELECT randomblob(100) FROM t1;
    INSERT INTO t1 SELECT randomblob(100) FROM t1;
    INSERT INTO t1 SELECT randomblob(100) FROM t1;
    INSERT INTO t1 SELECT randomblob(100) FROM t1;
    INSERT INTO t1 SELECT randomblob(100) FROM t1;
    INSERT INTO t1 SELECT randomblob(100) FROM t1;
    CREATE INDEX i1 ON t1(x);
  

    BEGIN;
    DROP INDEX i1;
  

    INSERT INTO t1 SELECT randomblob(100) FROM t1;
    ROLLBACK;
    PRAGMA integrity_check;
  
