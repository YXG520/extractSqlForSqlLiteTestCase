
CREATE TABLE d1(n int, log int);
INSERT INTO d1 VALUES($i,$j)
SELECT * FROM d1 ORDER BY n


    CREATE TABLE t1(log int, cnt int);
    PRAGMA count_changes=on;
  

      EXPLAIN INSERT INTO t1 SELECT log, count(*) FROM d1 GROUP BY log;
    

    INSERT INTO t1 SELECT log, count(*) FROM d1 GROUP BY log;
  


SELECT * FROM t1 ORDER BY log

DROP TABLE t1

    CREATE TABLE t1(log int, cnt int);
    INSERT INTO t1 
       SELECT log, count(*) FROM d1 GROUP BY log
       EXCEPT SELECT n-1,log FROM d1;
  


    SELECT * FROM t1 ORDER BY log;
  

DROP TABLE t1

    CREATE TABLE t1(log int, cnt int);
    PRAGMA count_changes=off;
    INSERT INTO t1 
       SELECT log, count(*) FROM d1 GROUP BY log
       INTERSECT SELECT n-1,log FROM d1;
  


    SELECT * FROM t1 ORDER BY log;
  
PRAGMA count_changes=off;

DROP TABLE t1

    CREATE TABLE t1(log int, cnt int);
    CREATE INDEX i1 ON t1(log);
    CREATE INDEX i2 ON t1(cnt);
    INSERT INTO t1 SELECT log, count() FROM d1 GROUP BY log;
    SELECT * FROM t1 ORDER BY log;
  
SELECT cnt FROM t1 WHERE log=3
SELECT log FROM t1 WHERE cnt=4 ORDER BY log
