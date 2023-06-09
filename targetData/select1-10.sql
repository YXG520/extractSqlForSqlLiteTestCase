

    SELECT f1 AS x FROM test1 ORDER BY x
  


    SELECT f1 AS x FROM test1 ORDER BY -x
  


    SELECT f1-23 AS x FROM test1 ORDER BY abs(x)
  


    SELECT f1-23 AS x FROM test1 ORDER BY -abs(x)
  


    SELECT f1-22 AS x, f2-22 as y FROM test1
  


    SELECT f1-22 AS x, f2-22 as y FROM test1 WHERE x>0 AND y<50
  


    SELECT f1 COLLATE nocase AS x FROM test1 ORDER BY x
  
