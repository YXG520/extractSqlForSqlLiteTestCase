

    SELECT * FROM t1 NATURAL JOIN t2 ON t1.a=t2.b;
  


    SELECT * FROM t1 NATURAL JOIN t2 USING(b);
  


    SELECT * FROM t1 JOIN t2 ON t1.a=t2.b USING(b);
  


    SELECT * FROM t1 JOIN t2 USING(a);
  

 SELECT * FROM t1 USING(a) 


    SELECT * FROM t1 JOIN t2 ON t3.a=t2.b;
  


    SELECT * FROM t1 INNER OUTER JOIN t2;
  


    SELECT * FROM t1 LEFT BOGUS JOIN t2;
  
