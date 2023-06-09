

  WITH t5(t5col1) AS (
    SELECT (
      WITH t3(t3col1) AS (
        WITH t2 AS (
          WITH t1 AS (SELECT 1 AS c1 GROUP BY 1) 
          SELECT a.c1 FROM t1 AS a, t1 AS b
          WHERE anoncol1 = 1
        )
        SELECT (SELECT 1 FROM t2) FROM t2
      ) 
      SELECT t3col1 FROM t3 WHERE t3col1
    ) FROM (SELECT 1 AS anoncol1)
  )
  SELECT t5col1, t5col1 FROM t5



  SELECT EXISTS (
    WITH RECURSIVE Table0 AS (
      WITH RECURSIVE Table0(Col0) AS (SELECT ALL 1  ) 
      SELECT ALL (
        WITH RECURSIVE Table0 AS (
          WITH RECURSIVE Table0 AS (
            WITH RECURSIVE Table0 AS (SELECT DISTINCT 1  GROUP BY 1  ) 
            SELECT DISTINCT * FROM Table0 NATURAL INNER JOIN Table0
            WHERE Col0 = 1  
          )
          SELECT ALL (SELECT DISTINCT * FROM Table0) FROM Table0 WHERE Col0 = 1
        ) 
        SELECT ALL * FROM Table0  NATURAL INNER JOIN  Table0      
      ) FROM Table0 ) 
      SELECT DISTINCT * FROM Table0  NATURAL INNER JOIN  Table0      
    ); 



  SELECT (
    WITH t1(a) AS (VALUES(1))
    SELECT (
      WITH t2(b) AS (
        WITH t3(c) AS (
          WITH t4(d) AS (VALUES('elvis'))
          SELECT t4a.d FROM t4 AS t4a JOIN t4 AS t4b LEFT JOIN t4 AS t4c
        )
        SELECT c FROM t3 WHERE a = 1
      )
      SELECT t2a.b FROM t2 AS t2a JOIN t2 AS t2x
    )
    FROM t1 GROUP BY 1
  )
  GROUP BY 1;

