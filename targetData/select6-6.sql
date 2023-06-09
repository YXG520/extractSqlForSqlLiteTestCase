

    DELETE FROM t1 WHERE x>4;
    SELECT * FROM t1
  


      SELECT * FROM (
        SELECT x AS 'a' FROM t1 UNION ALL SELECT x+10 AS 'a' FROM t1
      ) ORDER BY a;
    


      SELECT * FROM (
        SELECT x AS 'a' FROM t1 UNION ALL SELECT x+1 AS 'a' FROM t1
      ) ORDER BY a;
    


      SELECT * FROM (
        SELECT x AS 'a' FROM t1 UNION SELECT x+1 AS 'a' FROM t1
      ) ORDER BY a;
    


      SELECT * FROM (
        SELECT x AS 'a' FROM t1 INTERSECT SELECT x+1 AS 'a' FROM t1
      ) ORDER BY a;
    


      SELECT * FROM (
        SELECT x AS 'a' FROM t1 EXCEPT SELECT x*2 AS 'a' FROM t1
      ) ORDER BY a;
    
