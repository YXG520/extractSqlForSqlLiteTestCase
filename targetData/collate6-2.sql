

    CREATE TABLE abc(a COLLATE binary, b, c);
    CREATE TABLE def(a, b, c);
    CREATE TRIGGER abc_t1 AFTER INSERT ON abc BEGIN
      INSERT INTO def SELECT * FROM abc WHERE a < new.a COLLATE nocase;
    END
  


    INSERT INTO abc VALUES('One', 'Two', 'Three');
    INSERT INTO abc VALUES('one', 'two', 'three');
    SELECT * FROM def;
  


    UPDATE abc SET a = 'four' WHERE a = 'one';
    CREATE TRIGGER abc_t2 AFTER UPDATE ON abc BEGIN
      INSERT INTO def SELECT * FROM abc WHERE a < new.a COLLATE nocase;
    END;
    SELECT * FROM def;
  
