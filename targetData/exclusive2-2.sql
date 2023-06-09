
PRAGMA cache_size=1000;
PRAGMA locking_mode = exclusive;

    BEGIN;
    DELETE FROM t1;
    INSERT INTO t1(a) VALUES(randstr(10, 400));
    INSERT INTO t1(a) VALUES(randstr(10, 400));
    INSERT INTO t1(a) SELECT randstr(10, 400) FROM t1;
    INSERT INTO t1(a) SELECT randstr(10, 400) FROM t1;
    INSERT INTO t1(a) SELECT randstr(10, 400) FROM t1;
    INSERT INTO t1(a) SELECT randstr(10, 400) FROM t1;
    INSERT INTO t1(a) SELECT randstr(10, 400) FROM t1;
    COMMIT;
    SELECT count(*) FROM t1;
  

PRAGMA cache_size = $nPage
PRAGMA cache_size






PRAGMA locking_mode = normal

