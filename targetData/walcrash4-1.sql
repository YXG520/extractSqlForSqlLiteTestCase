

  PRAGMA autovacuum = 0;
  PRAGMA page_size = 1024;
  PRAGMA journal_mode = wal;
  PRAGMA main.synchronous = full;



          PRAGMA main.synchronous=FULL;
          BEGIN;
          CREATE TABLE t1(x UNIQUE);
        

          INSERT INTO t1 VALUES( randomblob(170000) );
          COMMIT;
        

 
      SELECT count(*) FROM t1;
      PRAGMA integrity_check;
    
