

    CREATE TABLE t1(a,b);
    INSERT INTO t1 VALUES(1,2);
    CREATE VIEW v1(x,y) AS SELECT a,b FROM t1;
  
SELECT v1.x, (Y) FROM v1

SELECT * FROM v1


    CREATE VIEW v2(x,y) AS SELECT a,b FROM t1 LIMIT 10;
  
SELECT * FROM v2 WHERE 1

SELECT v2.x, [v2].[y] FROM v2 WHERE 1

SELECT +x, +y FROM v2 WHERE 1


    CREATE TABLE t2(c,d);
    INSERT INTO t2 VALUES(3,4);
    CREATE VIEW v3 AS SELECT c AS a, d AS b FROM t2;
  
SELECT t1.a, v3.a AS n FROM t1 LEFT JOIN v3

SELECT t1.a AS n, v3.a FROM t1 JOIN v3

SELECT t1.a, v3.a AS n FROM t1 JOIN v3


  DROP TABLE IF EXISTS t1;
  DROP TABLE IF EXISTS t2;
  CREATE TABLE t1(aaa INT);
  INSERT INTO t1(aaa) VALUES(123);


SELECT BBb FROM (SELECT aaa AS Bbb FROM t1)


    CREATE TABLE t2 AS SELECT BBb FROM (SELECT aaa AS Bbb FROM t1);
    SELECT name FROM pragma_table_info('t2');
  

 -- added 2019-08-10 to invalidate
  DROP TABLE IF EXISTS t1;      -- a couple assert()s that were
  CREATE TABLE t1(a);           -- added by ticket 3b44500725
  INSERT INTO t1 VALUES(17),(2),(99),(-3),(7);
  SELECT (SELECT avg(a) UNION SELECT min(a) OVER()) FROM t1;



  CREATE TABLE t4 AS SELECT #0;



  CREATE TABLE t5 AS SELECT RAISE(abort,a);

