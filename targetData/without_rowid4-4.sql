

    INSERT INTO tblA values(1, 2);
    SELECT * FROM tblA;
    SELECT * FROM tblB;
    SELECT * FROM tblC;
  

  DROP TABLE tblA;
  DROP TABLE tblB;
  DROP TABLE tblC;


  CREATE TABLE tbl(a, b, c, PRIMARY KEY(c,a,b)) WITHOUT rowid;
  CREATE TRIGGER tbl_trig BEFORE INSERT ON tbl 
    BEGIN
      INSERT INTO tbl VALUES (new.a, new.b, new.c+1);
    END;



    INSERT INTO tbl VALUES (1, 2, 3);
    select * from tbl;
  

  DROP TABLE tbl;


  CREATE TABLE tbl(a, b, c, PRIMARY KEY(c,a,b)) WITHOUT rowid;
  CREATE TRIGGER tbl_trig BEFORE INSERT ON tbl 
    BEGIN
      INSERT INTO tbl VALUES (1, 2, 3);
      INSERT INTO tbl VALUES (2, 2, 3);
      UPDATE tbl set b = 10 WHERE a = 1;
      DELETE FROM tbl WHERE a = 1;
      DELETE FROM tbl;
    END;

