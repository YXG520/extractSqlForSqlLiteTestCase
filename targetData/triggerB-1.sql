

    CREATE TABLE x(x INTEGER PRIMARY KEY, y INT NOT NULL);
    INSERT INTO x(y) VALUES(1);
    INSERT INTO x(y) VALUES(1);
    CREATE TEMP VIEW vx AS SELECT x, y, 0 AS yy FROM x;
    CREATE TEMP TRIGGER tx INSTEAD OF UPDATE OF y ON vx
    BEGIN
      UPDATE x SET y = new.y WHERE x = new.x;
    END;
    SELECT * FROM vx;
  


    UPDATE vx SET y = yy;
    SELECT * FROM vx;
  
