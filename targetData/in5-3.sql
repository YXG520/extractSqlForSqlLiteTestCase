

    DROP INDEX t2abc;
    CREATE INDEX t2ab ON t2(a,b);
    SELECT d FROM t2 WHERE a IN t1x AND b IN t1y AND c IN t1z ORDER BY d;
  


    SELECT d FROM t2 WHERE a IN t1y AND b IN t1x AND c IN t1z ORDER BY d;
  


    EXPLAIN SELECT d FROM t2 WHERE a IN t1x AND b IN t1y AND c IN t1z
  
