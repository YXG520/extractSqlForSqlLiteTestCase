

    WITH RECURSIVE c(x) AS (VALUES(1) UNION ALL SELECT x+1 FROM c)
    SELECT count(*) FROM c;
  