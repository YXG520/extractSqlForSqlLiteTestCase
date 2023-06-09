

    CREATE TABLE ab(a PRIMARY KEY, b) WITHOUT rowid;
    CREATE TABLE cd(
      c PRIMARY KEY REFERENCES ab ON UPDATE CASCADE ON DELETE CASCADE, 
      d
    ) WITHOUT rowid;
    CREATE TABLE ef(
      e REFERENCES cd ON UPDATE CASCADE, 
      f, CHECK (e!=5)
    );
  


    INSERT INTO ab VALUES(1, 'b');
    INSERT INTO cd VALUES(1, 'd');
    INSERT INTO ef VALUES(1, 'e');
  

 UPDATE ab SET a = 5 

 SELECT * FROM ab 

 UPDATE ab SET a = 5 

 SELECT * FROM ab; SELECT * FROM cd; SELECT * FROM ef 

 DELETE FROM ab 

 SELECT * FROM ab; SELECT * FROM cd; SELECT * FROM ef 
