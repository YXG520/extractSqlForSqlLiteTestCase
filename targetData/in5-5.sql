

    DROP INDEX t2abcd;
    CREATE INDEX t2cbad ON t2(c,b,a,d);
    SELECT d FROM t2 WHERE a IN t1x AND b IN t1y AND c IN t1z ORDER BY d;
  


    SELECT d FROM t2 WHERE a IN t1y AND b IN t1x AND c IN t1z ORDER BY d;
  


    EXPLAIN SELECT d FROM t2 WHERE a IN t1x AND b IN t1y AND c IN t1z
  
