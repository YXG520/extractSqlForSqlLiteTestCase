

    PRAGMA auto_vacuum = 0;
    PRAGMA page_size = 8192;
    PRAGMA journal_mode = wal;
    CREATE TABLE t1(x, y);
    INSERT INTO t1 VALUES(1, 2);
    CREATE TABLE t2(x, y);
  



    PRAGMA locking_mode = exclusive;
    SELECT * FROM t1
  


    INSERT INTO t1 VALUES(3, 4);
    SELECT * FROM t1;
  


    PRAGMA wal_checkpoint;
  
