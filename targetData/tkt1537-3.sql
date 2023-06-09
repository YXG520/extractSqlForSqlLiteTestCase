

    SELECT * FROM t1 LEFT JOIN t2 ON b GLOB 'abc*' WHERE t1.id=1;
  

 
    SELECT * FROM t2 LEFT JOIN t1 ON a1 GLOB 'abc*' WHERE t2.id=3;
  
