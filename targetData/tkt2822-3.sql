

    SELECT a, CAST (b AS TEXT) AS x, c FROM t1 
      UNION ALL 
    SELECT a, b, c FROM t2 
      ORDER BY CAST (b AS TEXT);
  


    SELECT t1.a, b, c FROM t1 UNION ALL SELECT t2.a, b, c FROM t2 ORDER BY t1.a;
  


    SELECT a, b, c FROM t1 UNION ALL SELECT a AS x, b, c FROM t2 ORDER BY x;
  


    SELECT a AS b, CAST (b AS TEXT) AS a, c FROM t1 
      UNION ALL 
    SELECT a, b, c FROM t2 
      ORDER BY a;
  


    SELECT a, b, c FROM t2 
      UNION ALL 
    SELECT a AS b, CAST (b AS TEXT) AS a, c FROM t1 
      ORDER BY a;
  
