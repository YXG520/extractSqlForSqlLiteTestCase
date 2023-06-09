

      PRAGMA journal_mode = WAL;
      PRAGMA page_size = 1024;
      CREATE TABLE t1(a PRIMARY KEY, b);
      INSERT INTO t1 VALUES(1, 2);
      INSERT INTO t1 VALUES(3, 4);
    

 
      SELECT * FROM t1 WHERE a = 1;
    

 PRAGMA main.integrity_check 
ok

 PRAGMA main.journal_mode 
wal
