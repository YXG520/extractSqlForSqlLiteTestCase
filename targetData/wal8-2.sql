

    CREATE TABLE t1(a, b);
    INSERT INTO t1 VALUES(1, 2);
    PRAGMA journal_mode = wal;
  


  PRAGMA page_size = 4096;
  VACUUM;

