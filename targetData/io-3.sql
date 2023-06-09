

      PRAGMA auto_vacuum=OFF;
    

 CREATE TABLE abc(a, b) 

      PRAGMA temp_store = memory;
      PRAGMA cache_size = 10;
      BEGIN;
      INSERT INTO abc VALUES('hello', 'world');
      INSERT INTO abc SELECT * FROM abc;
      INSERT INTO abc SELECT * FROM abc;
      INSERT INTO abc SELECT * FROM abc;
      INSERT INTO abc SELECT * FROM abc;
      INSERT INTO abc SELECT * FROM abc;
      INSERT INTO abc SELECT * FROM abc;
      INSERT INTO abc SELECT * FROM abc;
      INSERT INTO abc SELECT * FROM abc;
      INSERT INTO abc SELECT * FROM abc;
      INSERT INTO abc SELECT * FROM abc;
      INSERT INTO abc SELECT * FROM abc;
    

 COMMIT 
