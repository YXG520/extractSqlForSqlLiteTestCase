pragma lock_status
BEGIN;
    CREATE TABLE abc(a, b, c);
  
COMMIT;
  
COMMIT;
  
SELECT * FROM sqlite_master;
  
