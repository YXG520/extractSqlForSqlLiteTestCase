

    PRAGMA auto_vacuum=1;
    CREATE TABLE t1(a, b, PRIMARY KEY(a, b));
    INSERT INTO t1 VALUES(randstr(400,400),randstr(400,400));
    INSERT INTO t1 SELECT randstr(400,400), randstr(400,400) FROM t1; -- 2
    INSERT INTO t1 SELECT randstr(400,400), randstr(400,400) FROM t1; -- 4
    INSERT INTO t1 SELECT randstr(400,400), randstr(400,400) FROM t1; -- 8
    INSERT INTO t1 SELECT randstr(400,400), randstr(400,400) FROM t1; -- 16
    INSERT INTO t1 SELECT randstr(400,400), randstr(400,400) FROM t1; -- 32
  


    CREATE TABLE t2(a, b, PRIMARY KEY(a, b));
    INSERT INTO t2 SELECT randstr(400,400), randstr(400,400) FROM t1; -- 2
    CREATE TABLE t3(a, b, PRIMARY KEY(a, b));
    INSERT INTO t3 SELECT randstr(400,400), randstr(400,400) FROM t1; -- 2
    CREATE TABLE t4(a, b, PRIMARY KEY(a, b));
    INSERT INTO t4 SELECT randstr(400,400), randstr(400,400) FROM t1; -- 2
    CREATE TABLE t5(a, b, PRIMARY KEY(a, b));
    INSERT INTO t5 SELECT randstr(400,400), randstr(400,400) FROM t1; -- 2
  


    BEGIN;
    DELETE FROM t4;
    COMMIT;
    SELECT count(*) FROM t1;
  
