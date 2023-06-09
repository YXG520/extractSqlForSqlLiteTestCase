

  CREATE TABLE g1(a, b); 
  INSERT INTO g1 VALUES
      (1, 1), (1, 2), (1, 3), (1, 'i'), (1, 'j'),
      (1, 6), (1, 7), (1, 8), (1, 9), (1, 10),
      (1, 4), (1, 5);

  CREATE TABLE g2(x, y);
  CREATE INDEX g2x ON g2(x);

  INSERT INTO g2 VALUES(1, 4);
  INSERT INTO g2 VALUES(1, 5);



  SELECT * FROM g2 WHERE (x, y) IN (
    SELECT a, b FROM g1 ORDER BY +a, +b LIMIT 10
  );



  SELECT * FROM g2 WHERE (x, y) IN (
    SELECT a, b FROM g1 ORDER BY a, b LIMIT 10
  );



  SELECT * FROM g2 WHERE (x, y) IN (
    SELECT a, b FROM g1 ORDER BY 1, 2 LIMIT 10
  );

