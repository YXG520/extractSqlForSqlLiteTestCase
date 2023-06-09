

    PRAGMA cache_size = 10;
    PRAGMA default_cache_size = 10;
    CREATE TABLE t1(a, b, PRIMARY KEY(a, b));
    INSERT INTO t1 VALUES(randstr(400,400),randstr(400,400));
    INSERT INTO t1 SELECT randstr(400,400), randstr(400,400) FROM t1; -- 2
    INSERT INTO t1 SELECT randstr(400,400), randstr(400,400) FROM t1; -- 4
    INSERT INTO t1 SELECT randstr(400,400), randstr(400,400) FROM t1; -- 8
    INSERT INTO t1 SELECT randstr(400,400), randstr(400,400) FROM t1; -- 16
    INSERT INTO t1 SELECT randstr(400,400), randstr(400,400) FROM t1; -- 32
  
SELECT md5sum(a, b) FROM t1
PRAGMA integrity_check
SELECT md5sum(a, b) FROM t1
