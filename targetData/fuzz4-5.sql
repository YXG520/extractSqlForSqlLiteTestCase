

  CREATE TABLE Table5 (Col0 DEFAULT (1 BETWEEN 1 AND CURRENT_TIMESTAMP));
  INSERT INTO Table5 DEFAULT VALUES;
  SELECT * FROM Table5;

