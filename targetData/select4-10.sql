

    SELECT DISTINCT log FROM t1 ORDER BY log
  


    SELECT DISTINCT log FROM t1 ORDER BY log LIMIT 4
  


    SELECT DISTINCT log FROM t1 ORDER BY log LIMIT 0
  


    SELECT DISTINCT log FROM t1 ORDER BY log LIMIT -1
  


    SELECT DISTINCT log FROM t1 ORDER BY log LIMIT -1 OFFSET 2
  


    SELECT DISTINCT log FROM t1 ORDER BY log LIMIT 3 OFFSET 2
  


    SELECT DISTINCT log FROM t1 ORDER BY +log LIMIT 3 OFFSET 20
  


    SELECT DISTINCT log FROM t1 ORDER BY log LIMIT 0 OFFSET 3
  


    SELECT DISTINCT max(n), log FROM t1 ORDER BY +log; -- LIMIT 2 OFFSET 1
  
