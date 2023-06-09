
SELECT * FROM sqlite_master

 PRAGMA lock_status 


    PRAGMA journal_mode = truncate;
    BEGIN;
    UPDATE t4 SET a = 10 WHERE 0;
    COMMIT;
  
 PRAGMA lock_status 

