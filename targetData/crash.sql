CREATE TABLE abc(a, b, c);
    INSERT INTO abc VALUES(1, 2, 3);
    INSERT INTO abc VALUES(4, 5, 6);
  
DELETE FROM abc WHERE a = 1;
    
DELETE FROM abc WHERE a = 1;
  
DELETE FROM abc WHERE a = 1;
  
SELECT * FROM abc;
  
DELETE FROM abc WHERE a = 1;
  
SELECT * FROM abc;
  
DELETE FROM abc WHERE a = 4;
  
SELECT * FROM abc;
  
BEGIN 
COMMIT 
SELECT sum(a), sum(b), sum(c) from abc 
DELETE FROM abc WHERE a < 800;
  
DELETE FROM abc WHERE a<800;
  
INSERT INTO abc SELECT * FROM abc;
    INSERT INTO abc SELECT * FROM abc;
    INSERT INTO abc SELECT * FROM abc;
    INSERT INTO abc SELECT * FROM abc;
    INSERT INTO abc SELECT * FROM abc;
  
ATTACH 'test2.db' AS aux;
      PRAGMA aux.default_cache_size = 10;
      CREATE TABLE aux.abc2 AS SELECT 2*a as a, 2*b as b, 2*c as c FROM abc;
    
CREATE TABLE abc(a, b, c);                          -- Root page 3
    INSERT INTO abc VALUES(randstr(1500,1500), 0, 0);   -- Overflow page 4
    INSERT INTO abc SELECT * FROM abc;
    INSERT INTO abc SELECT * FROM abc;
    INSERT INTO abc SELECT * FROM abc;
  
pragma auto_vacuum
BEGIN;                                             -- 1
    DELETE FROM abc WHERE oid = 1;                     -- 2
    INSERT INTO abc VALUES(randstr(1500,1500), 0, 0);  -- 3
    CREATE TABLE abc2(a, b, c);                        -- 4
    SELECT * FROM abc;                                 -- 5
    COMMIT;                                            -- 6
  
DROP TABLE abc;
  
ATTACH 'test2.db' AS aux;
    BEGIN;
    INSERT INTO abc VALUES(randstr(1500,1500), 0, 0);
    INSERT INTO abc2 VALUES(randstr(1500,1500), 0, 0);
    COMMIT;
  
