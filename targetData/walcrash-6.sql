

      PRAGMA journal_mode = WAL;
      PRAGMA page_size = 1024;
      BEGIN;
        CREATE TABLE t1(x PRIMARY KEY);
        INSERT INTO t1 VALUES(randomblob(900));
        INSERT INTO t1 VALUES(randomblob(900));
        INSERT INTO t1 SELECT randomblob(900) FROM t1;           /* 4 */
      COMMIT;
      INSERT INTO t1 SELECT randomblob(900) FROM t1 LIMIT 4;   /* 8 */
      INSERT INTO t1 SELECT randomblob(900) FROM t1 LIMIT 4;   /* 12 */
      INSERT INTO t1 SELECT randomblob(900) FROM t1 LIMIT 4;   /* 16 */
      INSERT INTO t1 SELECT randomblob(900) FROM t1 LIMIT 4;   /* 20 */
      INSERT INTO t1 SELECT randomblob(900) FROM t1 LIMIT 4;   /* 24 */
      INSERT INTO t1 SELECT randomblob(900) FROM t1 LIMIT 4;   /* 28 */
      INSERT INTO t1 SELECT randomblob(900) FROM t1 LIMIT 4;   /* 32 */

      PRAGMA wal_checkpoint;
      INSERT INTO t1 VALUES(randomblob(9000));
      INSERT INTO t1 VALUES(randomblob(9000));
      INSERT INTO t1 VALUES(randomblob(9000));
      INSERT INTO t1 VALUES(randomblob(9000));
    

 SELECT count(*) BETWEEN 34 AND 36 FROM t1 WHERE x != 1 

 PRAGMA main.integrity_check 
ok

 PRAGMA main.journal_mode 
wal
