

      BEGIN;
      INSERT INTO tbl values (1, 2, 3);
      SELECT * from tbl;
    


      INSERT OR ABORT INTO tbl values (2, 2, 3);
    


      SELECT * from tbl;
    


      INSERT OR FAIL INTO tbl values (2, 2, 3);
    


      SELECT * from tbl;
    


      INSERT OR REPLACE INTO tbl values (2, 2, 3);
      SELECT * from tbl;
    


      INSERT OR ROLLBACK INTO tbl values (3, 2, 3);
    


      SELECT * from tbl;
    
DELETE FROM tbl

    INSERT INTO tbl values (4, 2, 3);
    INSERT INTO tbl values (6, 3, 4);
    CREATE TRIGGER au_tbl AFTER UPDATE ON tbl BEGIN
      UPDATE OR IGNORE tbl SET a = new.a, c = 10;
    END;
  


      BEGIN;
      UPDATE tbl SET a = 1 WHERE a = 4;
      SELECT * from tbl;
    


      UPDATE OR ABORT tbl SET a = 4 WHERE a = 1;
    


      SELECT * from tbl;
    


      UPDATE OR FAIL tbl SET a = 4 WHERE a = 1;
    


      SELECT * from tbl;
    


      UPDATE OR REPLACE tbl SET a = 1 WHERE a = 4;
      SELECT * from tbl;
    


      INSERT INTO tbl VALUES (2, 3, 4);
      SELECT * FROM tbl;
    


      UPDATE OR ROLLBACK tbl SET a = 4 WHERE a = 1;
    


      SELECT * from tbl;
    

    DROP TABLE tbl;
  
