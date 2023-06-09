

    PRAGMA cache_size=10;
    BEGIN;
    CREATE TABLE t1(x TEXT);
    INSERT INTO t1 VALUES(randstr(10,400));
    INSERT INTO t1 VALUES(randstr(10,400));
    INSERT INTO t1 SELECT randstr(10,400) FROM t1;
    INSERT INTO t1 SELECT randstr(10,400) FROM t1;
    INSERT INTO t1 SELECT randstr(10,400) FROM t1;
    INSERT INTO t1 SELECT randstr(10,400) FROM t1;
    INSERT INTO t1 SELECT randstr(10,400) FROM t1;
    INSERT INTO t1 SELECT randstr(10,400) FROM t1;
    INSERT INTO t1 SELECT randstr(10,400) FROM t1;
    INSERT INTO t1 SELECT randstr(10,400) FROM t1;
    INSERT INTO t1 SELECT randstr(10,400) FROM t1;
    COMMIT;
    SELECT count(*) FROM t1;
  


        PRAGMA cache_size = 20;
        SAVEPOINT one;
          DELETE FROM t1 WHERE random()%2==0;
          SAVEPOINT two;
            INSERT INTO t1 SELECT randstr(10,10)||x FROM t1;
           ROLLBACK TO two;
            UPDATE t1 SET x = randstr(10, 400) WHERE random()%10;
          RELEASE two;
        ROLLBACK TO one;
        RELEASE one;
      


      DELETE FROM t1 WHERE random()%10==0;
      INSERT INTO t1 SELECT randstr(10,10)||x FROM t1 WHERE random()%9==0;
    
