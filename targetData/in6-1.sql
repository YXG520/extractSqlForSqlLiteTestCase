

    CREATE TABLE t1(a,b,c,d);
    WITH RECURSIVE c(x) AS (VALUES(1) UNION ALL SELECT x+1 FROM c WHERE x<100)
      INSERT INTO t1(a,b,c,d)
        SELECT 100, 200+x/2, 300+x/5, x FROM c;
    CREATE INDEX t1abc ON t1(a,b,c);
    ANALYZE;
    UPDATE sqlite_stat1 SET stat='1000000 500000 500 50';
    ANALYZE sqlite_master;
  

    SELECT d FROM t1
     WHERE a=99
       AND b IN (200,205,201,204)
       AND c IN (304,302,309,308);
  



    EXPLAIN
    SELECT d FROM t1
      WHERE a IN (98,99,100,101)
        AND b=200 AND c=300;
  


 SELECT d FROM t1
  WHERE a=100
    AND b IN (200,201,202,204)
    AND c IN (300,302,301,305)
  ORDER BY +d;


