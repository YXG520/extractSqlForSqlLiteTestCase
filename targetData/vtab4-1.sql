

    CREATE TABLE treal(a PRIMARY KEY, b, c);
    CREATE VIRTUAL TABLE techo USING echo(treal);
  


    INSERT INTO techo VALUES(1, 2, 3);
  


    UPDATE techo SET a = 2;
  


    DELETE FROM techo;
  
