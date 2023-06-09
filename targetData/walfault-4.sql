

      PRAGMA auto_vacuum = 0;
      PRAGMA journal_mode = WAL;
      CREATE TABLE t1(a PRIMARY KEY, b);
      INSERT INTO t1 VALUES('a', 'b');
      PRAGMA wal_checkpoint;
      SELECT * FROM t1;
    
