

    PRAGMA default_cache_size=10;
  

    BEGIN;
    CREATE TABLE t3(x TEXT);
    INSERT INTO t3 VALUES(randstr(10,400));
    INSERT INTO t3 VALUES(randstr(10,400));
    INSERT INTO t3 SELECT randstr(10,400) FROM t3;
    INSERT INTO t3 SELECT randstr(10,400) FROM t3;
    INSERT INTO t3 SELECT randstr(10,400) FROM t3;
    INSERT INTO t3 SELECT randstr(10,400) FROM t3;
    INSERT INTO t3 SELECT randstr(10,400) FROM t3;
    INSERT INTO t3 SELECT randstr(10,400) FROM t3;
    INSERT INTO t3 SELECT randstr(10,400) FROM t3;
    INSERT INTO t3 SELECT randstr(10,400) FROM t3;
    INSERT INTO t3 SELECT randstr(10,400) FROM t3;
    COMMIT;
    SELECT count(*) FROM t3;
  
SELECT count(*), md5sum(x) FROM t3


       BEGIN;
       DELETE FROM t3 WHERE random()%10!=0;
       INSERT INTO t3 SELECT randstr(10,10)||x FROM t3;
       INSERT INTO t3 SELECT randstr(10,10)||x FROM t3;
       ROLLBACK;
     


       BEGIN;
       DELETE FROM t3 WHERE random()%10!=0;
       INSERT INTO t3 SELECT randstr(10,10)||x FROM t3;
       DELETE FROM t3 WHERE random()%10!=0;
       INSERT INTO t3 SELECT randstr(10,10)||x FROM t3;
       ROLLBACK;
     


         INSERT INTO t3 SELECT randstr(10,400) FROM t3 WHERE random()%10==0;
       



