

    PRAGMA journal_mode = wal;
    CREATE TABLE t1(a, b);
    INSERT INTO t1 VALUES(1, 2);
  


  PRAGMA page_size = 4096;
  SELECT name FROM sqlite_master;

