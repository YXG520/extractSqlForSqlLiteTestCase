

    CREATE TABLE abc(a UNIQUE, b UNIQUE, c UNIQUE);
    BEGIN;
    INSERT INTO abc VALUES(1, 2, 3);
    INSERT INTO abc SELECT a+1, b+1, c+1 FROM abc;
  



    COMMIT;
  


    PRAGMA locking_mode = exclusive;
    BEGIN;
    INSERT INTO abc VALUES(5, 6, 7);
  


    INSERT INTO abc SELECT a+10, b+10, c+10 FROM abc;
  


    COMMIT;
  


    PRAGMA locking_mode = normal;
    SELECT * FROM abc;
  

