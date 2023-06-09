

    CREATE TABLE t1(n int, log int);
    BEGIN;
  
INSERT INTO t1 VALUES($i,$j)

    COMMIT
  
SELECT DISTINCT log FROM t1 ORDER BY log

SELECT count(*) FROM t1


    SELECT min(n),min(log),max(n),max(log),sum(n),sum(log),avg(n),avg(log)
    FROM t1
  

SELECT max(n)/avg(n), max(log)/avg(log) FROM t1
