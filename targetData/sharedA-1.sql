

    CREATE TABLE t1(x);
    INSERT INTO t1 VALUES(123);
  
 
    SELECT * FROM t1;
    CREATE INDEX i1 ON t1(x);
  

 SELECT * FROM t1 ORDER BY x; 

    BEGIN; DROP INDEX i1;
  
 SELECT * FROM t1 ORDER BY x; 
