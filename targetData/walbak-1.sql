
 
    PRAGMA synchronous = NORMAL;
    PRAGMA page_size = 1024;
    PRAGMA auto_vacuum = 0;
    PRAGMA journal_mode = wal;
    BEGIN;
      CREATE TABLE t1(a PRIMARY KEY, b);
      INSERT INTO t1 VALUES('I', 'one');
    COMMIT;
  


 
    SELECT * FROM t1;
    PRAGMA main.journal_mode;
  

 PRAGMA integrity_check 

 
    VACUUM;
    PRAGMA main.journal_mode;
  


 PRAGMA wal_checkpoint 


 
    CREATE TABLE t2(a, b);
    INSERT INTO t2 SELECT * FROM t1;
    DROP TABLE t1;
  

 VACUUM 

 PRAGMA wal_checkpoint 
 
    PRAGMA integrity_check;
    SELECT md5sum(a, b) FROM t1; 
  
