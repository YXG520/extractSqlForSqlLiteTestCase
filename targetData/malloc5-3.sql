

    BEGIN;
    SELECT * FROM abc;
  

    SELECT * FROM sqlite_master;
    BEGIN;
    SELECT * FROM def;
  

SELECT * FROM abc; COMMIT
SELECT * FROM def; COMMIT
PRAGMA cache_size=2000
