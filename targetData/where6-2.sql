

    CREATE INDEX i1 ON t1(c);

    SELECT * FROM t1 LEFT JOIN t2 ON b=x AND c=1;
  


    SELECT * FROM t1 LEFT JOIN t2 ON x=b AND c=1;
  


    SELECT * FROM t1 LEFT JOIN t2 ON x=b AND 1=c;
  


    SELECT * FROM t1 LEFT JOIN t2 ON b=x AND 1=c;
  




    SELECT * FROM t1 LEFT JOIN t2 ON b=x WHERE c=1;
  


    SELECT * FROM t1 LEFT JOIN t2 ON x=b WHERE c=1;
  


    SELECT * FROM t1 LEFT JOIN t2 ON x=b WHERE 1=c;
  


    SELECT * FROM t1 LEFT JOIN t2 ON b=x WHERE 1=c;
  
