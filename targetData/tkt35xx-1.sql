

    PRAGMA auto_vacuum = 0;
    PRAGMA page_size = 1024;
  


    PRAGMA auto_vacuum = 0;
    CREATE TABLE t1(a,b,c);
    CREATE INDEX i1 ON t1(c);
    INSERT INTO t1 VALUES(0, 0, zeroblob(676));
    INSERT INTO t1 VALUES(1, 1, zeroblob(676));
    DELETE FROM t1;
    BEGIN;
    INSERT INTO t1 VALUES(0, 0, zeroblob(676));
    INSERT INTO t1 VALUES(1, 1, zeroblob(676));
    ROLLBACK;
    INSERT INTO t1 VALUES(0, 0, zeroblob(676));
  

    INSERT INTO t1 VALUES(1, 1, zeroblob(676));
  


    PRAGMA auto_vacuum = 0;
    PRAGMA page_size = 1024;
    CREATE TABLE t3(a INTEGER PRIMARY KEY, b);
    INSERT INTO t3 VALUES(1, $big);
    INSERT INTO t3 VALUES(2, $big);
    INSERT INTO t3 VALUES(3, $big);
    INSERT INTO t3 VALUES(4, $big);
    CREATE TABLE t4(c, d);
    INSERT INTO t4 VALUES(5, $big);
    INSERT INTO t4 VALUES(1, $big);
  


    BEGIN;
    CREATE TABLE t5(e PRIMARY KEY, f);
    DROP TABLE t5;
    INSERT INTO t3(a, b) SELECT c, d FROM t4;
  


 SELECT count(*) FROM t3 

 
    INSERT INTO t3 VALUES(5, $big);
    COMMIT;
  

 SELECT count(*) FROM t3 
