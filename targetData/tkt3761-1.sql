

    PRAGMA auto_vacuum=INCREMENTAL;
    CREATE TABLE t1(x);
    INSERT INTO t1 VALUES(zeroblob(900));
    INSERT INTO t1 VALUES(zeroblob(900));
    INSERT INTO t1 SELECT x FROM t1;
    INSERT INTO t1 SELECT x FROM t1;
    INSERT INTO t1 SELECT x FROM t1;
    INSERT INTO t1 SELECT x FROM t1;
    BEGIN;
    DELETE FROM t1 WHERE rowid%2;
    PRAGMA incremental_vacuum(4);
    ROLLBACK;
  
PRAGMA integrity_check
