PRAGMA journal_mode=WAL;
    CREATE TABLE t1(x);
    INSERT INTO t1 VALUES(1);
    INSERT INTO t1 VALUES(2);
    SELECT x FROM t1 ORDER BY x;
  
SELECT * FROM t1 
SELECT name FROM sqlite_master 
