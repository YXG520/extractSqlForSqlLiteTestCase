

  SELECT a, b, '|' FROM t1 WHERE a IN (2,4,5,3,1) ORDER BY b LIMIT 5;



  SELECT a, b, '|' FROM t1 WHERE a IN (2,4,5,3,1) ORDER BY +b LIMIT 5;


