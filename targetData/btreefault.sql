PRAGMA auto_vacuum = incremental;
    PRAGMA journal_mode = DELETE;
    CREATE TABLE t1(a PRIMARY KEY, b);
    INSERT INTO t1 VALUES(randomblob(1000), randomblob(100));
    INSERT INTO t1 SELECT randomblob(1000), randomblob(1000) FROM t1;
    INSERT INTO t1 SELECT randomblob(1000), randomblob(1000) FROM t1;
    INSERT INTO t1 SELECT randomblob(1000), randomblob(1000) FROM t1;
    INSERT INTO t1 SELECT randomblob(1000), randomblob(1000) FROM t1;
    DELETE FROM t1 WHERE rowid%2;
  
PRAGMA incremental_vacuum = 10 
CREATE TABLE t1(i INTEGER PRIMARY KEY, a, b);
  CREATE INDEX i1 ON t1(b);
  CREATE TABLE t2(x, y);

INSERT INTO t1 VALUES(25, 25, 25);
  INSERT INTO t2 VALUES(25, 'a'), (25, 'b'), (25, 'c');

