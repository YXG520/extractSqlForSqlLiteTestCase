


    BEGIN;
    CREATE TABLE t1(a, b);
    INSERT INTO t1(a, b) VALUES(randstr(10, 400), 0);
    INSERT INTO t1(a, b) VALUES(randstr(10, 400), 0);
    INSERT INTO t1(a, b) SELECT randstr(10, 400), 0 FROM t1;
    INSERT INTO t1(a, b) SELECT randstr(10, 400), 0 FROM t1;
    INSERT INTO t1(a, b) SELECT randstr(10, 400), 0 FROM t1;
    INSERT INTO t1(a, b) SELECT randstr(10, 400), 0 FROM t1;
    INSERT INTO t1(a, b) SELECT randstr(10, 400), 0 FROM t1;
    COMMIT;
    SELECT count(*) FROM t1;
  

PRAGMA cache_size = $nPage
PRAGMA cache_size





    UPDATE t1 SET b=a, a=0;
  




