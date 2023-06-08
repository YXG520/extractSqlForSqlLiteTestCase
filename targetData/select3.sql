CREATE TABLE t1(n int, log int);
    BEGIN;
  
COMMIT
  
SELECT DISTINCT log FROM t1 ORDER BY log
SELECT count(*) FROM t1
SELECT min(n),min(log),max(n),max(log),sum(n),sum(log),avg(n),avg(log)
    FROM t1
  
SELECT max(n)/avg(n), max(log)/avg(log) FROM t1
SELECT log, count(*) FROM t1 GROUP BY log ORDER BY log
SELECT log, min(n) FROM t1 GROUP BY log ORDER BY log
SELECT log, avg(n) FROM t1 GROUP BY log ORDER BY log
SELECT log, avg(n)+1 FROM t1 GROUP BY log ORDER BY log
SELECT log, avg(n)-min(n) FROM t1 GROUP BY log ORDER BY log
SELECT log*2+1, avg(n)-min(n) FROM t1 GROUP BY log ORDER BY log
SELECT log*2+1 as x, count(*) FROM t1 GROUP BY x ORDER BY x
  
SELECT log*2+1 AS x, count(*) AS y FROM t1 GROUP BY x ORDER BY y, x
  
SELECT log*2+1 AS x, count(*) AS y FROM t1 GROUP BY x ORDER BY 10-(x+y)
  
#    SELECT log, count(*) FROM t1 GROUP BY 'x' ORDER BY log;
#  
SELECT log, count(*) FROM t1 GROUP BY 0 ORDER BY log;
  
SELECT log, count(*) FROM t1 GROUP BY 3 ORDER BY log;
  
SELECT log, count(*) FROM t1 GROUP BY 1 ORDER BY log;
  
SELECT log, count(*) FROM t1 GROUP BY ORDER BY log;
  
SELECT log, count(*) FROM t1 GROUP BY;
  
SELECT log, count(*) FROM t1 HAVING log>=4

SELECT count(*) FROM t1 HAVING log>=4

SELECT count(*) FROM t1 HAVING log!=400

SELECT log, count(*) FROM t1 GROUP BY log HAVING log>=4 ORDER BY log
SELECT log, count(*) FROM t1 
    GROUP BY log 
    HAVING count(*)>=4 
    ORDER BY log
  
SELECT log, count(*) FROM t1 
    GROUP BY log 
    HAVING count(*)>=4 
    ORDER BY max(n)+0
  
SELECT log AS x, count(*) AS y FROM t1 
    GROUP BY x
    HAVING y>=4 
    ORDER BY max(n)+0
  
SELECT log AS x FROM t1 
    GROUP BY x
    HAVING count(*)>=4 
    ORDER BY max(n)+0
  
SELECT log, count(*), avg(n), max(n+log*2) FROM t1 
    GROUP BY log 
    ORDER BY max(n+log*2)+0, avg(n)+0
  
SELECT log, count(*), avg(n), max(n+log*2) FROM t1 
    GROUP BY log 
    ORDER BY max(n+log*2)+0, min(log,avg(n))+0
  
SELECT log, min(n) FROM t1 GROUP BY log ORDER BY log;
  
SELECT log, min(n) FROM t1 GROUP BY log ORDER BY log DESC;
  
SELECT log, min(n) FROM t1 GROUP BY log ORDER BY 1;
  
SELECT log, min(n) FROM t1 GROUP BY log ORDER BY 1 DESC;
  
CREATE INDEX i1 ON t1(log);
    SELECT log, min(n) FROM t1 GROUP BY log ORDER BY log;
  
SELECT log, min(n) FROM t1 GROUP BY log ORDER BY log DESC;
  
SELECT log, min(n) FROM t1 GROUP BY log ORDER BY 1;
  
SELECT log, min(n) FROM t1 GROUP BY log ORDER BY 1 DESC;
  
CREATE TABLE t2(a,b);
    INSERT INTO t2 VALUES(1,2);
    SELECT a, sum(b) FROM t2 WHERE b=5 GROUP BY a;
  
SELECT a, sum(b) FROM t2 WHERE b=5;
  
CREATE TABLE A (
      A1 DOUBLE,
      A2 VARCHAR COLLATE NOCASE,
      A3 DOUBLE
    );
    INSERT INTO A VALUES(39136,'ABC',1201900000);
    INSERT INTO A VALUES(39136,'ABC',1207000000);
    SELECT typeof(sum(a3)) FROM a;
  
SELECT typeof(sum(a3)) FROM a GROUP BY a1;
  
DROP TABLE IF EXISTS t1;
     CREATE TABLE t1 (c0, c1 REAL PRIMARY KEY);
     INSERT INTO t1(c0, c1) VALUES (0, $x), (0, 0);
     UPDATE t1 SET c0 = NULL;
     UPDATE OR REPLACE t1 SET c1 = 1;
     SELECT DISTINCT * FROM t1 WHERE (t1.c0 IS NULL);
     PRAGMA integrity_check;
  
CREATE TABLE t0(c0 REAL, c1 REAL GENERATED ALWAYS AS (c0));
  INSERT INTO t0(c0) VALUES (1);
  SELECT * FROM t0 GROUP BY c0;

CREATE TABLE t1(a, b);
  CREATE TABLE t2(c, d);
  SELECT max(t1.a), 
         (SELECT 'xyz' FROM (SELECT * FROM t2 WHERE 0) WHERE t1.b=1) 
  FROM t1;

1 {
    CREATE TABLE t1(a TEXT);
    CREATE TABLE t2(x INT);
    CREATE INDEX t2x ON t2(x);
    INSERT INTO t1 VALUES('abc');
  
SELECT max(a), val FROM t1 LEFT JOIN (
        SELECT 'constant' AS val FROM t2 WHERE x=1234
    )
  
INSERT INTO t2 VALUES(123);
    SELECT max(a), val FROM t1 LEFT JOIN (
        SELECT 'constant' AS val FROM t2 WHERE x=1234
    )
  
INSERT INTO t2 VALUES(1234);
    SELECT max(a), val FROM t1 LEFT JOIN (
        SELECT 'constant' AS val FROM t2 WHERE x=1234
    )
  
CREATE TABLE t1(a);
  CREATE TABLE t2(x);

SELECT count(x), m FROM t1 LEFT JOIN (SELECT x, 59 AS m FROM t2) GROUP BY a;

INSERT INTO t1 VALUES(1), (1), (2), (3);
  SELECT count(x), m FROM t1 LEFT JOIN (SELECT x, 59 AS m FROM t2) GROUP BY a;

INSERT INTO t2 VALUES(45);
  SELECT count(x), m FROM t1 LEFT JOIN (SELECT x, 59 AS m FROM t2) GROUP BY a;

INSERT INTO t2 VALUES(210);
  SELECT count(x), m FROM t1 LEFT JOIN (SELECT x, 59 AS m FROM t2) GROUP BY a;

INSERT INTO t2 VALUES(NULL);
  SELECT count(x), m FROM t1 LEFT JOIN (SELECT x, 59 AS m FROM t2) GROUP BY a;

DELETE FROM t2;
  DELETE FROM t1;
  INSERT INTO t1 VALUES('value');
  INSERT INTO t2 VALUES('hello');

SELECT group_concat(x), m FROM t1 
    LEFT JOIN (SELECT x, 59 AS m FROM t2) GROUP BY a;

SELECT group_concat(x), m, n FROM t1 
    LEFT JOIN (SELECT x, 59 AS m, 60 AS n FROM t2) GROUP BY a;

