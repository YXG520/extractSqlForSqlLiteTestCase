

    SELECT x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x FROM t2
    UNION
    SELECT x FROM t2
  


    SELECT x FROM t2
    UNION
    SELECT x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x FROM t2
  


    SELECT x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x FROM t2
    UNION ALL
    SELECT x FROM t2
  


    SELECT x FROM t2
    UNION ALL
    SELECT x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x FROM t2
  


    SELECT x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x FROM t2
    EXCEPT
    SELECT x FROM t2
  


    SELECT x FROM t2
    EXCEPT
    SELECT x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x FROM t2
  


    SELECT x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x FROM t2
    INTERSECT
    SELECT x FROM t2
  


    SELECT x FROM t2
    INTERSECT
    SELECT x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x FROM t2
  


    SELECT x FROM t2
    UNION
    SELECT x FROM t2
    UNION ALL
    SELECT x FROM t2
    EXCEPT
    SELECT x FROM t2
    INTERSECT
    SELECT x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x FROM t2
  


    SELECT x FROM t2
    UNION
    SELECT x FROM t2
    UNION ALL
    SELECT x FROM t2
    EXCEPT
    SELECT x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x FROM t2
    EXCEPT
    SELECT x FROM t2
  


    SELECT x FROM t2
    UNION
    SELECT x FROM t2
    UNION ALL
    SELECT x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x FROM t2
    UNION ALL
    SELECT x FROM t2
    EXCEPT
    SELECT x FROM t2
  


    SELECT x FROM t2
    UNION
    SELECT x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x FROM t2
    UNION
    SELECT x FROM t2
    UNION ALL
    SELECT x FROM t2
    EXCEPT
    SELECT x FROM t2
  


    SELECT x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x,x FROM t2
    UNION
    SELECT x FROM t2
    INTERSECT
    SELECT x FROM t2
    UNION ALL
    SELECT x FROM t2
    EXCEPT
    SELECT x FROM t2
  


    INSERT INTO t2(rowid) VALUES(2) UNION SELECT 3,4 UNION SELECT 5,6 ORDER BY 1;
  
