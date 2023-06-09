

    CREATE TABLE abc(a, b, c);
    INSERT INTO abc VALUES(1, 2, 3);
    CREATE VIRTUAL TABLE eee USING echo('abc');
    SELECT * FROM eee;
  


    ALTER TABLE eee RENAME TO fff;
    SELECT * FROM fff;
  


    ALTER TABLE fff RENAME TO ggg;
  
