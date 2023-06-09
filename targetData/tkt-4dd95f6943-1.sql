

  CREATE TABLE t1(x);
  INSERT INTO t1 VALUES (3), (4), (2), (1), (5), (6);


 DROP INDEX IF EXISTS i1; 


    SELECT x FROM t1 WHERE x IN(2, 4, 5) ORDER BY x ASC;
  


    SELECT x FROM t1 WHERE x IN(2, 4, 5) ORDER BY x DESC;
  
