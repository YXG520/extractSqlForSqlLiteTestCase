

        PRAGMA page_size = $pgsz;
        PRAGMA auto_vacuum = 0;
        PRAGMA journal_mode = wal;
      

        CREATE TABLE t1(a, b);
        INSERT INTO t1 VALUES(1, 2);
      

