

  CREATE TABLE q1(r INTEGER PRIMARY KEY, s TEXT);
  WITH d(a, b) AS (
    SELECT 0, '' 
      UNION ALL
    SELECT a+1, b||'.' FROM d WHERE a<10000
  )
  INSERT INTO q1 SELECT * FROM d;

