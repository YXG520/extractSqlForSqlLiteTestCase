

    SELECT * FROM (SELECT 1)
  


    SELECT c,b,a,* FROM (SELECT 1 AS 'a', 2 AS 'b', 'abc' AS 'c')
  


    SELECT c,b,a,* FROM (SELECT 1 AS 'a', 2 AS 'b', 'abc' AS 'c' WHERE 0)
  


    SELECT c,b,a,* FROM (SELECT 1 AS 'a', 2 AS 'b', 'abc' AS 'c' WHERE 1)
  
