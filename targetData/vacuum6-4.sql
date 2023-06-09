

  CREATE TABLE tx(a, b);
  CREATE INDEX i1 ON tx(b);
  WITH s(i) AS (
      SELECT 8000 UNION ALL SELECT i+1 FROM s WHERE i<10000
  )
  INSERT INTO tx SELECT i, randomblob(i) FROM s;

  SELECT sum(length(b)) FROM tx;

