

    CREATE TABLE t3(a REAL);
    INSERT INTO t3 VALUES(44.0);
    INSERT INTO t3 VALUES(56.0);
  


    pragma vdbe_trace = 0;
    SELECT (CASE WHEN a=0 THEN 0 ELSE (a + 25) / 50 END) AS categ, count(*)
    FROM t3 GROUP BY categ
  


    CREATE TABLE t4(a REAL);
    INSERT INTO t4 VALUES( 2.0 );
    INSERT INTO t4 VALUES( 3.0 );
  


    SELECT (CASE WHEN a=0 THEN 'zero' ELSE a/2 END) AS t FROM t4 GROUP BY t;
  

 SELECT a=0, typeof(a) FROM t4 

 SELECT a=0, typeof(a) FROM t4 GROUP BY a 


    CREATE TABLE t5(a TEXT, b INT);
    INSERT INTO t5 VALUES(123, 456);
    SELECT typeof(a), a FROM t5 GROUP BY a HAVING a<b;
  
