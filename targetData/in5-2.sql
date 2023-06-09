

    CREATE INDEX t2abc ON t2(a,b,c);
    SELECT d FROM t2 WHERE a IN t1x AND b IN t1y AND c IN t1z ORDER BY d;
  


    SELECT d FROM t2 WHERE a IN t1y AND b IN t1x AND c IN t1z ORDER BY d;
  


    EXPLAIN SELECT d FROM t2 WHERE a IN t1x AND b IN t1y AND c IN t1z
  


    SELECT d FROM t2 WHERE a IN t3x AND b IN t3y AND c IN t3z ORDER BY d;
  


    EXPLAIN SELECT d FROM t2 WHERE a IN t3x AND b IN t1y AND c IN t1z
  


    EXPLAIN SELECT d FROM t2 WHERE a IN t1x AND b IN t3y AND c IN t1z
  


    EXPLAIN SELECT d FROM t2 WHERE a IN t1x AND b IN t1y AND c IN t3z
  
