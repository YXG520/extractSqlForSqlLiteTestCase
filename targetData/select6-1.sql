

    BEGIN;
    CREATE TABLE t1(x, y);
    INSERT INTO t1 VALUES(1,1);
    INSERT INTO t1 VALUES(2,2);
    INSERT INTO t1 VALUES(3,2);
    INSERT INTO t1 VALUES(4,3);
    INSERT INTO t1 VALUES(5,3);
    INSERT INTO t1 VALUES(6,3);
    INSERT INTO t1 VALUES(7,3);
    INSERT INTO t1 VALUES(8,4);
    INSERT INTO t1 VALUES(9,4);
    INSERT INTO t1 VALUES(10,4);
    INSERT INTO t1 VALUES(11,4);
    INSERT INTO t1 VALUES(12,4);
    INSERT INTO t1 VALUES(13,4);
    INSERT INTO t1 VALUES(14,4);
    INSERT INTO t1 VALUES(15,4);
    INSERT INTO t1 VALUES(16,5);
    INSERT INTO t1 VALUES(17,5);
    INSERT INTO t1 VALUES(18,5);
    INSERT INTO t1 VALUES(19,5);
    INSERT INTO t1 VALUES(20,5);
    COMMIT;
    SELECT DISTINCT y FROM t1 ORDER BY y;
  

SELECT * FROM (SELECT x, y FROM t1 WHERE x<2)

SELECT count(*) FROM (SELECT y FROM t1)

SELECT count(*) FROM (SELECT DISTINCT y FROM t1)

SELECT count(*) FROM (SELECT DISTINCT * FROM (SELECT y FROM t1))

SELECT count(*) FROM (SELECT * FROM (SELECT DISTINCT y FROM t1))


    SELECT * 
    FROM (SELECT count(*),y FROM t1 GROUP BY y) AS a,
         (SELECT max(x),y FROM t1 GROUP BY y) as b
    WHERE a.y=b.y ORDER BY a.y
  


    SELECT a.y, a.[count(*)], [max(x)], [count(*)]
    FROM (SELECT count(*),y FROM t1 GROUP BY y) AS a,
         (SELECT max(x),y FROM t1 GROUP BY y) as b
    WHERE a.y=b.y ORDER BY a.y
  


    SELECT q, p, r
    FROM (SELECT count(*) as p , y as q FROM t1 GROUP BY y) AS a,
         (SELECT max(x) as r, y as s FROM t1 GROUP BY y) as b
    WHERE q=s ORDER BY s
  


    SELECT q, p, r, b.[min(x)+y]
    FROM (SELECT count(*) as p , y as q FROM t1 GROUP BY y) AS a,
         (SELECT max(x) as r, y as s, min(x)+y FROM t1 GROUP BY y) as b
    WHERE q=s ORDER BY s
  
