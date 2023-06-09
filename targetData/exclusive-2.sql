

    CREATE TABLE abc(a, b, c);
    INSERT INTO abc VALUES(1, 2, 3);
    PRAGMA locking_mode = exclusive;
  


    INSERT INTO abc VALUES(4, 5, 6);
    SELECT * FROM abc;
  


    SELECT * FROM abc;
  


    SELECT * FROM abc;
  


    INSERT INTO abc VALUES(7, 8, 9);
  


    BEGIN;
    INSERT INTO abc VALUES(7, 8, 9);
  

    COMMIT
  


    COMMIT
  


    ROLLBACK;
  


    INSERT INTO abc VALUES(7, 8, 9);
  

    SELECT * FROM abc;
  



    SELECT * FROM abc;
  

    SELECT * FROM abc;
  
