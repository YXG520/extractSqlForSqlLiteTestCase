

    PRAGMA page_size=1024;
    CREATE TABLE abc(a, b, c);
    INSERT INTO abc VALUES(1, 2, 3);
    INSERT INTO abc VALUES(4, 5, 6);
  
 SELECT * FROM abc 

 SELECT * FROM abc 

 
    PRAGMA page_size = 2048;
    VACUUM;
  
 SELECT * FROM abc 

 SELECT * FROM abc 


    PRAGMA page_size=16384;
    VACUUM;
  
 SELECT * FROM abc 


    PRAGMA page_size=1024;
    VACUUM;
  
 SELECT * FROM abc 
