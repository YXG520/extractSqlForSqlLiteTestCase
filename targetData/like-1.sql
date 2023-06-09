

    CREATE TABLE t1(x TEXT);
  
INSERT INTO t1 VALUES(:str)

    SELECT count(*) FROM t1;
  


    SELECT x FROM t1 WHERE x LIKE 'abc' ORDER BY 1;
  


    SELECT x FROM t1 WHERE x GLOB 'abc' ORDER BY 1;
  


    SELECT x FROM t1 WHERE x LIKE 'ABC' ORDER BY 1;
  


    SELECT x FROM t1 WHERE x LIKE 'aBc' ORDER BY 1;
  

PRAGMA case_sensitive_like=on


    SELECT x FROM t1 WHERE x LIKE 'abc' ORDER BY 1;
  



    SELECT x FROM t1 WHERE x GLOB 'abc' ORDER BY 1;
  


    SELECT x FROM t1 WHERE x LIKE 'ABC' ORDER BY 1;
  


    SELECT x FROM t1 WHERE x LIKE 'aBc' ORDER BY 1;
  


    PRAGMA case_sensitive_like=off;
    SELECT x FROM t1 WHERE x LIKE 'abc' ORDER BY 1;
  

