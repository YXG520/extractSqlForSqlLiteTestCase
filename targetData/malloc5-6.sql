

    PRAGMA page_size=1024;
    PRAGMA default_cache_size=2;
  

    PRAGMA temp_store = memory;
    BEGIN;
    CREATE TABLE abc(a PRIMARY KEY, b, c);
    INSERT INTO abc VALUES(randstr(50,50), randstr(75,75), randstr(100,100));
    INSERT INTO abc 
        SELECT randstr(50,50), randstr(75,75), randstr(100,100) FROM abc;
    INSERT INTO abc 
        SELECT randstr(50,50), randstr(75,75), randstr(100,100) FROM abc;
    INSERT INTO abc 
        SELECT randstr(50,50), randstr(75,75), randstr(100,100) FROM abc;
    INSERT INTO abc 
        SELECT randstr(50,50), randstr(75,75), randstr(100,100) FROM abc;
    INSERT INTO abc 
        SELECT randstr(50,50), randstr(75,75), randstr(100,100) FROM abc;
    INSERT INTO abc 
        SELECT randstr(50,50), randstr(75,75), randstr(100,100) FROM abc;
    COMMIT;
  
PRAGMA cache_size=2

PRAGMA cache_size
PRAGMA cache_size

SELECT * FROM abc
SELECT * FROM abc


 SELECT * FROM abc 






