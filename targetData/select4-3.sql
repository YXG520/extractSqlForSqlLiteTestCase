

    SELECT DISTINCT log FROM t1
    EXCEPT
    SELECT n FROM t1 WHERE log=3
    ORDER BY log;
  


    CREATE TABLE t2 AS 
      SELECT DISTINCT log FROM t1
      EXCEPT
      SELECT n FROM t1 WHERE log=3
      ORDER BY log;
    SELECT * FROM t2;
  
DROP TABLE t2


    CREATE TABLE t2 AS 
      SELECT DISTINCT log FROM t1
      EXCEPT
      SELECT n FROM t1 WHERE log=3
      ORDER BY log DESC;
    SELECT * FROM t2;
  
DROP TABLE t2


      SELECT log FROM t1 WHERE n IN 
        (SELECT DISTINCT log FROM t1 EXCEPT
         SELECT n FROM t1 WHERE log=3)
      ORDER BY log;
    


    SELECT DISTINCT log FROM t1 ORDER BY log
    EXCEPT
    SELECT n FROM t1 WHERE log=3
    ORDER BY log;
  
