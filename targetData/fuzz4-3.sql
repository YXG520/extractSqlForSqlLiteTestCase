

  CREATE TABLE Table3 (Col0 DEFAULT (CURRENT_TIMESTAMP BETWEEN 1 AND 1));
  INSERT INTO Table3 DEFAULT VALUES;
  SELECT * FROM Table3;

