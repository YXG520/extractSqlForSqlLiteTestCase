PRAGMA auto_vacuum=OFF;
    PRAGMA page_size=4096;
    BEGIN;
    CREATE TABLE abc AS SELECT 1 AS a, 2 AS b, 3 AS c;
    COMMIT;
    BEGIN;
    CREATE TABLE def AS SELECT 1 AS d, 2 AS e, 3 AS f;
    COMMIT;
  
PRAGMA auto_vacuum=OFF;
    PRAGMA page_size=2048;
    BEGIN;
    CREATE TABLE abc AS SELECT 1 AS a, 2 AS b, 3 AS c;
    COMMIT;
  
INSERT INTO abc VALUES(5, 6, 7);
  
set pagesize $::SQLITE_MAX_PAGE_SIZE
  
CREATE TABLE abc(a, b, c)
INSERT INTO abc SELECT * FROM abc;
      INSERT INTO abc SELECT * FROM abc;
      INSERT INTO abc SELECT * FROM abc;
      INSERT INTO abc SELECT * FROM abc;
      INSERT INTO abc SELECT * FROM abc;
    
