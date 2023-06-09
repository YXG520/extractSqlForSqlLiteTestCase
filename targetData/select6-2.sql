

    CREATE TABLE t2(a INTEGER PRIMARY KEY, b);
    INSERT INTO t2 SELECT * FROM t1;
    SELECT DISTINCT b FROM t2 ORDER BY b;
  

SELECT * FROM (SELECT a, b FROM t2 WHERE a<2)

SELECT count(*) FROM (SELECT b FROM t2)

SELECT count(*) FROM (SELECT DISTINCT b FROM t2)

SELECT count(*) FROM (SELECT DISTINCT * FROM (SELECT b FROM t2))

SELECT count(*) FROM (SELECT * FROM (SELECT DISTINCT b FROM t2))


    SELECT * 
    FROM (SELECT count(*),b FROM t2 GROUP BY b) AS a,
         (SELECT max(a),b FROM t2 GROUP BY b) as b
    WHERE a.b=b.b ORDER BY a.b
  


    SELECT a.b, a.[count(*)], [max(a)], [count(*)]
    FROM (SELECT count(*),b FROM t2 GROUP BY b) AS a,
         (SELECT max(a),b FROM t2 GROUP BY b) as b
    WHERE a.b=b.b ORDER BY a.b
  


    SELECT q, p, r
    FROM (SELECT count(*) as p , b as q FROM t2 GROUP BY b) AS a,
         (SELECT max(a) as r, b as s FROM t2 GROUP BY b) as b
    WHERE q=s ORDER BY s
  


    SELECT a.q, a.p, b.r
    FROM (SELECT count(*) as p , b as q FROM t2 GROUP BY q) AS a,
         (SELECT max(a) as r, b as s FROM t2 GROUP BY s) as b
    WHERE a.q=b.s ORDER BY a.q
  
