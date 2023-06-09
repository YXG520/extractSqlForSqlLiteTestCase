

  WITH i(x) AS (
    WITH j AS (SELECT 10)
    SELECT 5 FROM t0 UNION SELECT 8 FROM m
  )
  SELECT * FROM i;



  CREATE VIEW v1(x,y) AS
    WITH t1(a,b) AS (VALUES(1,2))
    SELECT * FROM nosuchtable JOIN t1;
  SELECT * FROM v1;

