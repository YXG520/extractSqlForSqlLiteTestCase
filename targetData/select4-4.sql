

    SELECT DISTINCT log FROM t1
    INTERSECT
    SELECT n FROM t1 WHERE log=3
    ORDER BY log;
  


    SELECT DISTINCT log FROM t1
    UNION ALL
    SELECT 6
    INTERSECT
    SELECT n FROM t1 WHERE log=3
    ORDER BY t1.log;
  


    CREATE TABLE t2 AS
      SELECT DISTINCT log FROM t1 UNION ALL SELECT 6
      INTERSECT
      SELECT n FROM t1 WHERE log=3
      ORDER BY log;
    SELECT * FROM t2;
  
DROP TABLE t2


    CREATE TABLE t2 AS
      SELECT DISTINCT log FROM t1 UNION ALL SELECT 6
      INTERSECT
      SELECT n FROM t1 WHERE log=3
      ORDER BY log DESC;
    SELECT * FROM t2;
  
DROP TABLE t2


      SELECT log FROM t1 WHERE n IN 
        (SELECT DISTINCT log FROM t1 INTERSECT
         SELECT n FROM t1 WHERE log=3)
      ORDER BY log;
    


    SELECT DISTINCT log FROM t1 ORDER BY log
    INTERSECT
    SELECT n FROM t1 WHERE log=3
    ORDER BY log;
  


  SELECT 3 IN (
    SELECT 0 ORDER BY 1
    INTERSECT
    SELECT 1
    INTERSECT 
    SELECT 2
    ORDER BY 1
  );

