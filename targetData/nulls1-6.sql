

  CREATE TABLE t5(a, b, c);
  WITH s(i) AS (
    VALUES(1) UNION ALL SELECT i+1 FROM s WHERE i<200
  ) 
  INSERT INTO t5 SELECT i%2, CASE WHEN (i%10)==0 THEN NULL ELSE i END, i FROM s;

 SELECT a,b FROM t5 WHERE a=1 ORDER BY b NULLS LAST, c 
 
  SELECT a,b FROM t5 WHERE a=1 ORDER BY b DESC NULLS FIRST, c DESC 



  CREATE INDEX t5ab ON t5(a, b, c);
  SELECT a,b FROM t5 WHERE a=1 ORDER BY b NULLS LAST, c;


S
Q


  SELECT a,b FROM t5 WHERE a=1 ORDER BY b DESC NULLS FIRST, c DESC 


S
Q