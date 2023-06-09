
 PRAGMA journal_mode = WAL 

    CREATE TABLE t1(a PRIMARY KEY, b);
    BEGIN;
      INSERT INTO t1 VALUES(randomblob(500), randomblob(500));
      INSERT INTO t1 SELECT randomblob(500), randomblob(500) FROM t1; /*  2 */
      INSERT INTO t1 SELECT randomblob(500), randomblob(500) FROM t1; /*  4 */
      INSERT INTO t1 SELECT randomblob(500), randomblob(500) FROM t1; /*  8 */
      INSERT INTO t1 SELECT randomblob(500), randomblob(500) FROM t1; /* 16 */
      INSERT INTO t1 SELECT randomblob(500), randomblob(500) FROM t1; /* 32 */
      INSERT INTO t1 SELECT randomblob(500), randomblob(500) FROM t1; /* 64 */
    COMMIT;
  


 UPDATE t1 SET b = randomblob(500) 


 PRAGMA cache_size = 10 

    BEGIN;
      UPDATE t1 SET b = randomblob(500);
  

B



 PRAGMA cache_size = 10 

    BEGIN;
      UPDATE t1 SET b = randomblob(500);
  

B


