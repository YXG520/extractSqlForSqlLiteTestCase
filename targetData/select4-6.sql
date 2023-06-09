

    SELECT log, count(*) as cnt FROM t1 GROUP BY log
    UNION
    SELECT log, n FROM t1 WHERE n=7
    ORDER BY cnt, log;
  


    SELECT log, count(*) FROM t1 GROUP BY log
    UNION
    SELECT log, n FROM t1 WHERE n=7
    ORDER BY count(*), log;
  


    SELECT NULL UNION SELECT NULL UNION
    SELECT 1 UNION SELECT 2 AS 'x'
    ORDER BY x;
  


    SELECT NULL UNION ALL SELECT NULL UNION ALL
    SELECT 1 UNION ALL SELECT 2 AS 'x'
    ORDER BY x;
  


      SELECT * FROM (
         SELECT NULL, 1 UNION ALL SELECT NULL, 1
      );
    


      SELECT DISTINCT * FROM (
         SELECT NULL, 1 UNION ALL SELECT NULL, 1
      );
    


      SELECT DISTINCT * FROM (
         SELECT 1,2  UNION ALL SELECT 1,2
      );
    


    SELECT NULL EXCEPT SELECT NULL
  
