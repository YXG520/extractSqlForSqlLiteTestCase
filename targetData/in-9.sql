

    CREATE TABLE t4 AS SELECT a FROM tb;
    SELECT * FROM t4;    
  


    SELECT b FROM t1 WHERE a IN t4;
  


    SELECT b FROM t1 WHERE a NOT IN t4;
  


    SELECT b FROM t1 WHERE a NOT IN tb;
  
