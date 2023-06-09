

  CREATE TABLE abc(a, b, c);
  INSERT INTO abc VALUES(1, 2, 3);
  INSERT INTO abc VALUES(4, 5, 6);
  INSERT INTO abc VALUES(7, 8, 9);
  SELECT (
    SELECT 'hardware' FROM ( 
      SELECT 'software' ORDER BY 'firmware' ASC, 'sportswear' DESC 
    ) GROUP BY 1 HAVING length(b)
  )
  FROM abc;

