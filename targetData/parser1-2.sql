

  WITH RECURSIVE
    c(x COLLATE binary) AS (VALUES(1) UNION SELECT x+1 FROM c WHERE x<5)
  SELECT x FROM c;



  WITH RECURSIVE
    c(x ASC) AS (VALUES(1) UNION SELECT x+1 FROM c WHERE x<5)
  SELECT x FROM c;
