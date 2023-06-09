

    CREATE TABLE abc(a, b, c);
    CREATE VIRTUAL TABLE abc2 USING echo(abc);
  


    INSERT INTO abc2 VALUES(1, 2, 3);
  
