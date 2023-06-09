

    $::presql
    PRAGMA auto_vacuum = 1;
    PRAGMA page_size = 1024;
    CREATE TABLE t1(a, b, c);
    CREATE TABLE t2(a, b, c);
    INSERT INTO t2 VALUES(randomblob(100), randomblob(100), randomblob(100));
    INSERT INTO t2 SELECT * FROM t2;
    INSERT INTO t2 SELECT * FROM t2;
    INSERT INTO t2 SELECT * FROM t2;
    INSERT INTO t2 SELECT * FROM t2;
  

    $::presql
    DROP TABLE t1;
  
