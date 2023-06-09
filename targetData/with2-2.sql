

  WITH i(x) AS (
    VALUES($min) UNION ALL SELECT x+1 FROM i WHERE x < $max
  )
  SELECT * FROM i;



  WITH i(x) AS (
    VALUES($min) UNION ALL SELECT x+1 FROM i WHERE x < $max
  )
  SELECT x FROM i JOIN i AS j USING (x);

