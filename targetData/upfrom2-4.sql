

    INSERT INTO x1 VALUES(1, 1, 1);
    INSERT INTO x1 VALUES(2, 2, 2);
    INSERT INTO x1 VALUES(3, 3, 3);
    INSERT INTO x1 VALUES(4, 4, 4);
    INSERT INTO x1 VALUES(5, 5, 5);
    CREATE TABLE map(o, t);
    INSERT INTO map VALUES(3, 30), (4, 40), (1, 10);
  


    UPDATE x1 SET a=t FROM map WHERE a=o;
    SELECT * FROM x1 ORDER BY a;
  
