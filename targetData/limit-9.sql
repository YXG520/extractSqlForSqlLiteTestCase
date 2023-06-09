

      SELECT * FROM (SELECT * FROM t6 LIMIT 3);
    


    CREATE TABLE t7 AS SELECT * FROM t6;
  


      SELECT * FROM (SELECT * FROM t7 LIMIT 3);
    


        SELECT * FROM (SELECT * FROM t6 LIMIT 3)
        UNION
        SELECT * FROM (SELECT * FROM t7 LIMIT 3)
        ORDER BY 1
      


        SELECT * FROM (SELECT * FROM t6 LIMIT 3)
        UNION
        SELECT * FROM (SELECT * FROM t7 LIMIT 3)
        ORDER BY 1
        LIMIT 2
      


      SELECT * FROM t6 LIMIT 3
      UNION
      SELECT * FROM t7 LIMIT 3
    
