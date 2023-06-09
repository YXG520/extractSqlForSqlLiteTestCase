

    SELECT a, b, c FROM t1 UNION ALL SELECT a, b, c FROM t2 ORDER BY a;
  


    SELECT a, CAST (b AS TEXT) AS x, c FROM t1 
      UNION ALL 
    SELECT a, b, c FROM t2 
      ORDER BY x;
  


    SELECT t1.a, b, c FROM t1 UNION ALL SELECT t2.a, b, c FROM t2 ORDER BY a;
  
