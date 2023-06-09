

    -- Create a database object (pages 2, 3 of the file)
    BEGIN;
      CREATE TABLE abc(a UNIQUE, b, c);
      INSERT INTO abc VALUES(1, 2, 3);
      INSERT INTO abc VALUES(4, 5, 6);
      INSERT INTO abc VALUES(7, 8, 9);
    COMMIT;
  

    PRAGMA cache_size = 10;
  

    BEGIN;
      -- Make sure the pager is in EXCLUSIVE state.
      CREATE TABLE def(d, e, f);
      INSERT INTO def VALUES
          ('xxxxxxxxxxxxxxx', 'yyyyyyyyyyyyyyyy', 'zzzzzzzzzzzzzzzz');
      INSERT INTO def SELECT * FROM def;
      INSERT INTO def SELECT * FROM def;
      INSERT INTO def SELECT * FROM def;
      INSERT INTO def SELECT * FROM def;
      INSERT INTO def SELECT * FROM def;
      INSERT INTO def SELECT * FROM def;
      INSERT INTO def SELECT * FROM def;
      DELETE FROM abc WHERE a = 4;
  


    BEGIN;
      -- Make sure the pager is in EXCLUSIVE state.
      UPDATE abc SET a=a+1;
      CREATE TABLE def(d, e, f);
      INSERT INTO def VALUES
          ('xxxxxxxxxxxxxxx', 'yyyyyyyyyyyyyyyy', 'zzzzzzzzzzzzzzzz');
      INSERT INTO def SELECT * FROM def;
      INSERT INTO def SELECT * FROM def;
      INSERT INTO def SELECT * FROM def;
      INSERT INTO def SELECT * FROM def;
      INSERT INTO def SELECT * FROM def;
      INSERT INTO def SELECT * FROM def;
      INSERT INTO def SELECT * FROM def;
      DELETE FROM abc WHERE a = 4;
  

    INSERT INTO abc SELECT 10, 20, 30 FROM def;
  

    ROLLBACK;
    SELECT * FROM abc;
  


    BEGIN;
      -- Make sure the pager is in EXCLUSIVE state.
      CREATE TABLE def(d, e, f);
      INSERT INTO def VALUES
          ('xxxxxxxxxxxxxxx', 'yyyyyyyyyyyyyyyy', 'zzzzzzzzzzzzzzzz');
      INSERT INTO def SELECT * FROM def;
      INSERT INTO def SELECT * FROM def;
      INSERT INTO def SELECT * FROM def;
      INSERT INTO def SELECT * FROM def;
      INSERT INTO def SELECT * FROM def;
      INSERT INTO def SELECT * FROM def;
      INSERT INTO def SELECT * FROM def;
      DELETE FROM abc WHERE a = 4;
  

    INSERT INTO abc SELECT 10, 20, 30 FROM def;
  

    COMMIT;
    SELECT * FROM abc;
  
