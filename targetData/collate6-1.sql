

    CREATE TABLE collate6log(a, b);
    CREATE TABLE collate6tab(a COLLATE NOCASE, b COLLATE BINARY);
  


    CREATE TRIGGER collate6trig BEFORE INSERT ON collate6tab 
      WHEN new.a = 'a' BEGIN
        INSERT INTO collate6log VALUES(new.a, new.b);
    END;
  


    INSERT INTO collate6tab VALUES('a', 'b');
    SELECT * FROM collate6log;
  


    INSERT INTO collate6tab VALUES('A', 'B');
    SELECT * FROM collate6log;
  


    DROP TRIGGER collate6trig;
    DELETE FROM collate6log;
  


    CREATE TRIGGER collate6trig BEFORE INSERT ON collate6tab BEGIN
      INSERT INTO collate6log VALUES(new.a='a', new.b='b');
    END;
  


    INSERT INTO collate6tab VALUES('a', 'b');
    SELECT * FROM collate6log;
  


    INSERT INTO collate6tab VALUES('A', 'B');
    SELECT * FROM collate6log;
  


    DROP TRIGGER collate6trig;
    DELETE FROM collate6log;
  


    DROP TABLE collate6tab;
  
