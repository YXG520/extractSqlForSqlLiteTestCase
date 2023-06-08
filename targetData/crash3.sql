PRAGMA page_size = 1024;
        BEGIN;
        CREATE TABLE abc(a, b, c);
        INSERT INTO abc VALUES(1, 2, 3);
        COMMIT;
      
$rand $sql
PRAGMA integrity_check; 
SELECT * FROM abc 
BEGIN;
    CREATE TABLE abc(a PRIMARY KEY, b, c);
    CREATE TABLE def(d PRIMARY KEY, e, f);
    PRAGMA default_cache_size = 10;
    INSERT INTO abc VALUES(randstr(10,1000),randstr(10,1000),randstr(10,1000));
    INSERT INTO abc 
      SELECT randstr(10,1000),randstr(10,1000),randstr(10,1000) FROM abc;
    INSERT INTO abc 
      SELECT randstr(10,1000),randstr(10,1000),randstr(10,1000) FROM abc;
    INSERT INTO abc 
      SELECT randstr(10,1000),randstr(10,1000),randstr(10,1000) FROM abc;
    INSERT INTO abc 
      SELECT randstr(10,1000),randstr(10,1000),randstr(10,1000) FROM abc;
    INSERT INTO abc 
      SELECT randstr(10,1000),randstr(10,1000),randstr(10,1000) FROM abc;
    INSERT INTO abc 
      SELECT randstr(10,1000),randstr(10,1000),randstr(10,1000) FROM abc;
    COMMIT;
  
SELECT randstr($ii,$ii+10);
      BEGIN;
      DELETE FROM abc WHERE random()%5;
      INSERT INTO abc 
        SELECT randstr(10,1000),randstr(10,1000),randstr(10,1000) 
        FROM abc
        WHERE (random()%5)==0;
      DELETE FROM def WHERE random()%5;
      INSERT INTO def 
        SELECT randstr(10,1000),randstr(10,1000),randstr(10,1000) 
        FROM def
        WHERE (random()%5)==0;
      COMMIT;
    
PRAGMA integrity_check
CREATE TABLE abc(a, b, c);
  
PRAGMA integrity_check
