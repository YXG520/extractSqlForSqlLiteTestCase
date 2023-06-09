

    SELECT 1+2+3
  


    SELECT 1,'hello',2
  


    SELECT 1 AS 'a','hello' AS 'b',2 AS 'c'
  


    DELETE FROM t3;
    INSERT INTO t3 VALUES(1,2);
  


    SELECT * FROM t3 UNION SELECT 3 AS 'a', 4 ORDER BY a;
  


    SELECT 3, 4 UNION SELECT * FROM t3;
  


      SELECT * FROM t3 WHERE a=(SELECT 1);
    


      SELECT * FROM t3 WHERE a=(SELECT 2);
    


      SELECT x FROM (
        SELECT a AS x, b AS y FROM t3 UNION SELECT a,b FROM t4 ORDER BY a,b
      ) ORDER BY x;
    


      SELECT z.x FROM (
        SELECT a AS x,b AS y FROM t3 UNION SELECT a, b FROM t4 ORDER BY a,b
      ) AS 'z' ORDER BY x;
    
