

    PRAGMA cache_size=10;
    DROP TABLE IF EXISTS t1;
    BEGIN;
    CREATE TABLE t1(x TEXT);
    CREATE INDEX i1 ON t1(x);
    INSERT INTO t1 VALUES(randstr(10,400));
    INSERT INTO t1 VALUES(randstr(10,400));
    INSERT INTO t1 SELECT randstr(10,400) FROM t1;
    INSERT INTO t1 SELECT randstr(10,400) FROM t1;
    INSERT INTO t1 SELECT randstr(10,400) FROM t1;
    INSERT INTO t1 SELECT randstr(10,400) FROM t1;
    INSERT INTO t1 SELECT randstr(10,400) FROM t1;
    INSERT INTO t1 SELECT randstr(10,400) FROM t1;
    INSERT INTO t1 SELECT randstr(10,400) FROM t1;
    COMMIT;
    SELECT count(*) FROM t1;
  


        SAVEPOINT one;
          INSERT INTO t1 SELECT * FROM t1 WHERE rowid<50;
         ROLLBACK TO one;
          INSERT INTO t1 SELECT * FROM t1 WHERE rowid<50;
          SAVEPOINT two;
            DELETE FROM t1 WHERE (random()%10)==0;
            SAVEPOINT three;
              DELETE FROM t1 WHERE (random()%10)==0;
              SAVEPOINT four;
                DELETE FROM t1 WHERE (random()%10)==0;
          RELEASE two;

          SAVEPOINT three;
            UPDATE t1 SET x = substr(x||x, 12, 100000) WHERE (rowid%12)==0;
            SAVEPOINT four;
              UPDATE t1 SET x = substr(x||x, 14, 100000) WHERE (rowid%14)==0;
           ROLLBACK TO three;
            UPDATE t1 SET x = substr(x||x, 13, 100000) WHERE (rowid%13)==0;
          RELEASE three;

        DELETE FROM t1 WHERE rowid > (
          SELECT rowid FROM t1 ORDER BY rowid ASC LIMIT 1 OFFSET 256
        );
        RELEASE one;
      


      DELETE FROM t1 WHERE random()%10==0;
      INSERT INTO t1 SELECT randstr(10,10)||x FROM t1 WHERE random()%9==0;
    
