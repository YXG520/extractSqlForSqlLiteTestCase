PRAGMA journal_mode = WAL;
      CREATE TABLE t1(a, b);
      INSERT INTO t1 VALUES(1, 1);
      INSERT INTO t1 VALUES(2, 3);
      INSERT INTO t1 VALUES(3, 6);
    
SELECT sum(a)==max(b) FROM t1 
INSERT INTO t1 VALUES(4, (SELECT sum(a) FROM t1) + 4);
      INSERT INTO t1 VALUES(5, (SELECT sum(a) FROM t1) + 5);
    
SELECT sum(a)==max(b) FROM t1 
PRAGMA main.journal_mode 
PRAGMA journal_mode = WAL;
      CREATE TABLE t1(a PRIMARY KEY, b);
      INSERT INTO t1 VALUES(1, 2);
      INSERT INTO t1 VALUES(3, 4);
      INSERT INTO t1 VALUES(5, 9);
    
SELECT sum(a)==max(b) FROM t1 
INSERT INTO t1 VALUES(6, (SELECT sum(a) FROM t1) + 6);
      INSERT INTO t1 VALUES(7, (SELECT sum(a) FROM t1) + 7);
    
SELECT sum(a)==max(b) FROM t1 
PRAGMA main.journal_mode 
#       PRAGMA journal_mode = WAL;
#       ATTACH 'test2.db' AS aux;
#       CREATE TABLE t1(a PRIMARY KEY, b);
#       CREATE TABLE aux.t2(a PRIMARY KEY, b);
#       BEGIN;
#         INSERT INTO t1 VALUES(1, 2);
#         INSERT INTO t2 VALUES(1, 2);
#       COMMIT;
#     
#       ATTACH 'test2.db' AS aux;
#       SELECT * FROM t1 EXCEPT SELECT * FROM t2;
#     
ok
ok
PRAGMA journal_mode = WAL;
      PRAGMA page_size = 1024;
      CREATE TABLE t1(a PRIMARY KEY, b);
      INSERT INTO t1 VALUES(1, 2);
      INSERT INTO t1 VALUES(3, 4);
    
SELECT * FROM t1 WHERE a = 1;
    
ok
wal
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
      INSERT INTO t1 VALUES(randomblob(900));
      INSERT INTO t1 VALUES(randomblob(900));
      INSERT INTO t1 VALUES(randomblob(900));
    
SELECT count(*)==33 OR count(*)==34 FROM t1 WHERE x != 1 
ok
wal
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
ok
wal
SELECT b FROM t1 WHERE a = 1 
ok
wal
