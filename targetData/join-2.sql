

    SELECT * FROM t1 NATURAL LEFT JOIN t2;
  


    SELECT * FROM t1 OUTER LEFT NATURAL JOIN t2;
  


    SELECT * FROM t1 NATURAL LEFT OUTER JOIN t2;
  


    SELECT * FROM t1 NATURAL LEFT JOIN t2;
  


    SELECT t1.* FROM t1 NATURAL LEFT JOIN t2;
  


    SELECT t2.* FROM t1 NATURAL LEFT JOIN t2;
  


    SELECT * FROM t2 NATURAL LEFT OUTER JOIN t1;
  

#    SELECT * FROM t1 NATURAL RIGHT OUTER JOIN t2;
#  


    SELECT * FROM t1 LEFT JOIN t2 ON t1.a=t2.d
  


    SELECT * FROM t1 LEFT JOIN t2 ON t1.a=t2.d WHERE t1.a>1
  


    SELECT * FROM t1 LEFT JOIN t2 ON t1.a=t2.d WHERE t2.b IS NULL OR t2.b>1
  