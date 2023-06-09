

      PRAGMA page_size = $pgsz;
      PRAGMA journal_mode = wal;
      BEGIN;
        CREATE TABLE t1(a, b);
        INSERT INTO t1 VALUES(1, 2);
      COMMIT;
      PRAGMA wal_checkpoint;
      CREATE INDEX i1 ON t1(a);
      PRAGMA wal_checkpoint;
    

 SELECT b FROM t1 WHERE a = 1 

 PRAGMA main.integrity_check 
ok

 PRAGMA main.journal_mode 
wal
