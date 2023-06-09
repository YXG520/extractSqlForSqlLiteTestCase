

  WITH c(x) AS (VALUES(0),(1))
  SELECT c1.x||c2.x||c3.x FROM c c1, c c2, c c3;


W
Q


  WITH c(x) AS MATERIALIZED (VALUES(0),(1))
  SELECT c1.x||c2.x||c3.x FROM c c1, c c2, c c3;


W
Q


  WITH c(x) AS NOT MATERIALIZED (VALUES(0),(1))
  SELECT c1.x||c2.x||c3.x FROM c c1, c c2, c c3;


W
Q


  WITH c(x) AS NOT MATERIALIZED (VALUES(0),(1))
  SELECT c1.x||c2.x||c3.x
    FROM (SELECT x FROM c LIMIT 5) AS c1,
         (SELECT x FROM c LIMIT 5) AS c2,
         (SELECT x FROM c LIMIT 5) AS c3;


W
Q


  WITH c(x) AS MATERIALIZED (VALUES(0),(1))
  SELECT c1.x||c2.x||c3.x
    FROM (SELECT x FROM c LIMIT 5) AS c1,
         (SELECT x FROM c LIMIT 6) AS c2,
         (SELECT x FROM c LIMIT 7) AS c3;


W
Q


  WITH c(x) AS (VALUES(0),(1))
  SELECT c1.x||c2.x||c3.x
    FROM (SELECT x FROM c LIMIT 5) AS c1,
         (SELECT x FROM c LIMIT 6) AS c2,
         (SELECT x FROM c LIMIT 7) AS c3;


W
Q


  WITH c(x) AS (VALUES(0),(1))
  SELECT c2.x + 100*(SELECT sum(x+1) FROM c WHERE c.x<=c2.x)
    FROM c AS c2 WHERE c2.x<10;


W
Q


  WITH c(x) AS NOT MATERIALIZED (VALUES(0),(1))
  SELECT c2.x + 100*(SELECT sum(x+1) FROM c WHERE c.x<=c2.x)
    FROM c AS c2 WHERE c2.x<10;


W
Q
