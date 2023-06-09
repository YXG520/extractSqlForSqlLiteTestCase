

  PRAGMA trusted_schema=OFF;
  CREATE VIEW test41(x) AS SELECT json_extract('{"a":123


  PRAGMA trusted_schema=ON;
  SELECT * FROM test41;

