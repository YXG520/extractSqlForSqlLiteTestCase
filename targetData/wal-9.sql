

    PRAGMA cache_size=2000;
    CREATE TABLE t1(x PRIMARY KEY);
    INSERT INTO t1 VALUES(blob(900));
    INSERT INTO t1 VALUES(blob(900));
    INSERT INTO t1 SELECT blob(900) FROM t1;       /*  4 */
    INSERT INTO t1 SELECT blob(900) FROM t1;       /*  8 */
    INSERT INTO t1 SELECT blob(900) FROM t1;       /* 16 */
    INSERT INTO t1 SELECT blob(900) FROM t1;       /* 32 */
    INSERT INTO t1 SELECT blob(900) FROM t1;       /* 64 */
    INSERT INTO t1 SELECT blob(900) FROM t1;       /* 128 */
    INSERT INTO t1 SELECT blob(900) FROM t1;       /* 256 */
  

PRAGMA integrity_check 

PRAGMA integrity_check 

 PRAGMA wal_checkpoint 
PRAGMA integrity_check 
