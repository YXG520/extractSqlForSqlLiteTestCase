

    BEGIN;
    CREATE TABLE t1(a int, b int);
  
INSERT INTO t1 VALUES($i,[expr {1<<$i}])

    COMMIT;
    SELECT count(*) FROM t1;
  

SELECT a FROM t1 WHERE b BETWEEN 10 AND 50 ORDER BY a

SELECT a FROM t1 WHERE b NOT BETWEEN 10 AND 50 ORDER BY a

SELECT a FROM t1 WHERE b BETWEEN a AND a*5 ORDER BY a

SELECT a FROM t1 WHERE b NOT BETWEEN a AND a*5 ORDER BY a

SELECT a FROM t1 WHERE b BETWEEN a AND a*5 OR b=512 ORDER BY a

SELECT a+ 100*(a BETWEEN 1 and 3) FROM t1 ORDER BY b
