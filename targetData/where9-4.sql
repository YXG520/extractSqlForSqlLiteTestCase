
S

S

S

S


    SELECT a FROM t1 INDEXED BY t1b
     WHERE +b>1000
       AND (c=31031 OR d IS NULL)
     ORDER BY +a
  

S


    SELECT a FROM t1 INDEXED BY t1c
     WHERE b>1000
       AND (c=31031 OR d IS NULL)
     ORDER BY +a
  


    SELECT a FROM t1 INDEXED BY t1d
     WHERE b>1000
       AND (c=31031 OR d IS NULL)
     ORDER BY +a
  
