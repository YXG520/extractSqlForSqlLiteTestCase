

    SELECT a FROM t1 WHERE a IN ();
  


    SELECT a FROM t1 WHERE a IN (5);
  


    SELECT a FROM t1 WHERE a NOT IN () ORDER BY a;
  


    SELECT a FROM t1 WHERE a IN (5) AND b IN ();
  


    SELECT a FROM t1 WHERE a IN (5) AND b NOT IN ();
  


    SELECT a FROM ta WHERE a IN ();
  



    SELECT a FROM ta WHERE a NOT IN ();
  


    SELECT * FROM ta LEFT JOIN tb ON (ta.b=tb.b) WHERE ta.a IN ();
  

