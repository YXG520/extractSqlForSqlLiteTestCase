

    CREATE VIRTUAL TABLE fff USING fts5(x, y, z);
  


    BEGIN;
      INSERT INTO fff VALUES('a', 'b', 'c');
      ALTER TABLE fff RENAME TO ggg;
    COMMIT;
  


    SELECT * FROM ggg;
  
