

    SELECT x FROM t2 LIMIT 5 UNION ALL SELECT a FROM t6;
  


    SELECT x FROM t2 LIMIT 5 UNION SELECT a FROM t6;
  


    SELECT x FROM t2 LIMIT 5 EXCEPT SELECT a FROM t6 LIMIT 3;
  


    SELECT x FROM t2 LIMIT 0,5 INTERSECT SELECT a FROM t6;
  


    SELECT x FROM t2 UNION ALL SELECT a FROM t6 LIMIT 5;
  


    SELECT x FROM t2 UNION ALL SELECT a FROM t6 LIMIT 3 OFFSET 1;
  


    SELECT x FROM t2 UNION ALL SELECT a FROM t6 ORDER BY 1 LIMIT 3 OFFSET 1;
  


    SELECT x FROM t2 UNION SELECT x+2 FROM t2 LIMIT 2 OFFSET 1;
  


    SELECT x FROM t2 UNION SELECT x+2 FROM t2 ORDER BY 1 DESC LIMIT 2 OFFSET 1;
  


    SELECT a+9 FROM t6 EXCEPT SELECT y FROM t2 LIMIT 2;
  


    SELECT a+9 FROM t6 EXCEPT SELECT y FROM t2 ORDER BY 1 DESC LIMIT 2;
  


    SELECT a+26 FROM t6 INTERSECT SELECT x FROM t2 LIMIT 1;
  


    SELECT a+27 FROM t6 INTERSECT SELECT x FROM t2 LIMIT 1;
  


    SELECT a+27 FROM t6 INTERSECT SELECT x FROM t2 LIMIT 1 OFFSET 1;
  


    SELECT a+27 FROM t6 INTERSECT SELECT x FROM t2 
       ORDER BY 1 DESC LIMIT 1 OFFSET 1;
  