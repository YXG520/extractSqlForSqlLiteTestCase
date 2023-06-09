
 DELETE FROM abc; VACUUM; 

 INSERT INTO abc VALUES(1, 2) 

 INSERT INTO abc VALUES(3, 4) 


    BEGIN;
    INSERT INTO abc VALUES(5, 6);
  
 SELECT * FROM abc 


 COMMIT 
 SELECT * FROM abc 

 CREATE TABLE def(d, e) 

    BEGIN;
    INSERT INTO abc VALUES(7, 8);
  

 INSERT INTO def VALUES('a', 'b'); 

 COMMIT 


    BEGIN IMMEDIATE;
    -- INSERT INTO abc VALUES(9, randstr(1000,1000));
  


    INSERT INTO abc VALUES(9, randstr(1000,1000));
    COMMIT
  

 COMMIT 

 SELECT * FROM abc 


      ATTACH 'test2.db' AS aux;
      PRAGMA aux.page_size = 1024;
      CREATE TABLE aux.abc2(a, b);
      BEGIN;
      INSERT INTO abc VALUES(9, 10);
    

 INSERT INTO abc2 SELECT * FROM abc 

 SELECT * FROM abc UNION ALL SELECT * FROM abc2 

 COMMIT 

 COMMIT 

 SELECT * FROM abc UNION ALL SELECT * FROM abc2 


    BEGIN;
    DELETE FROM abc;
  

 SELECT * FROM abc 


    ROLLBACK;
    SELECT * FROM abc;
  


    BEGIN;
    INSERT INTO abc VALUES(9, 10);
  

 ROLLBACK; 

    PRAGMA auto_vacuum = OFF;
    PRAGMA page_size = 2048;
    CREATE TABLE abc(a, b);
  

    BEGIN;
    INSERT INTO abc VALUES(9, 10);
  

 COMMIT 


    BEGIN;
    INSERT INTO abc VALUES(11, 12);
  

 ROLLBACK 

    BEGIN;
    INSERT INTO abc VALUES(11, 12);
  

 ROLLBACK 

 
    PRAGMA locking_mode = exclusive;
    PRAGMA locking_mode;
  

 
    INSERT INTO abc VALUES(11, 12);
  

 
    PRAGMA locking_mode = normal;
    INSERT INTO abc VALUES(13, 14);
  
