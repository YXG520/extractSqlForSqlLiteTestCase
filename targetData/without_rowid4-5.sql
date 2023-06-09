

    INSERT INTO tbl VALUES(100, 200, 300);
  

  DROP TABLE tbl;


    CREATE TABLE tbl (a PRIMARY KEY, b, c) WITHOUT rowid;
    CREATE TRIGGER ai_tbl AFTER INSERT ON tbl BEGIN
      INSERT OR IGNORE INTO tbl values (new.a, 0, 0);
    END;
  
