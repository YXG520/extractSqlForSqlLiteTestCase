

    PRAGMA page_size = 1024;
    BEGIN;
    CREATE TABLE abc(a PRIMARY KEY, b, c);
    INSERT INTO abc VALUES(randomblob(100), randomblob(200), randomblob(1000));
    INSERT INTO abc 
        SELECT randomblob(1000), randomblob(200), randomblob(100)
        FROM abc;
    INSERT INTO abc 
        SELECT randomblob(100), randomblob(200), randomblob(1000)
        FROM abc;
    INSERT INTO abc 
        SELECT randomblob(100), randomblob(200), randomblob(1000)
        FROM abc;
    INSERT INTO abc 
        SELECT randomblob(100), randomblob(200), randomblob(1000)
        FROM abc;
    INSERT INTO abc 
        SELECT randomblob(100), randomblob(200), randomblob(1000)
        FROM abc;
    INSERT INTO abc 
        SELECT randomblob(25), randomblob(45), randomblob(9456)
        FROM abc;
    INSERT INTO abc 
        SELECT randomblob(100), randomblob(200), randomblob(1000)
        FROM abc;
    INSERT INTO abc 
        SELECT randomblob(25), randomblob(45), randomblob(9456)
        FROM abc;
    COMMIT;
  

 PRAGMA page_size 

 
      PRAGMA page_size = $request;
      VACUUM;
    
 PRAGMA page_size 

