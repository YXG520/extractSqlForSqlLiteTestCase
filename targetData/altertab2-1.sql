

    CREATE TABLE rr(a, b);
    CREATE VIRTUAL TABLE ff USING fts5(a, b);
    CREATE TRIGGER tr1 AFTER INSERT ON rr BEGIN
      INSERT INTO ff VALUES(new.a, new.b);
    END;
    INSERT INTO rr VALUES('hello', 'world');
    SELECT * FROM ff;
  


    ALTER TABLE ff RENAME TO ffff;
  


    INSERT INTO rr VALUES('in', 'tcl');
    SELECT * FROM ffff;
  
