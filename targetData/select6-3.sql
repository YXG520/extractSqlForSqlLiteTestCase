

    SELECT * FROM (SELECT * FROM (SELECT * FROM t1 WHERE x=3));
  


    SELECT * FROM
      (SELECT a.q, a.p, b.r
       FROM (SELECT count(*) as p , b as q FROM t2 GROUP BY q) AS a,
            (SELECT max(a) as r, b as s FROM t2 GROUP BY s) as b
       WHERE a.q=b.s ORDER BY a.q)
  


    SELECT a,b,a+b FROM (SELECT avg(x) as 'a', avg(y) as 'b' FROM t1)
  


    SELECT a,b,a+b FROM (SELECT avg(x) as 'a', avg(y) as 'b' FROM t1 WHERE y=4)
  


    SELECT x,y,x+y FROM (SELECT avg(a) as 'x', avg(b) as 'y' FROM t2 WHERE a=4)
  


    SELECT a,b,a+b FROM (SELECT avg(x) as 'a', avg(y) as 'b' FROM t1)
    WHERE a>10
  


    SELECT a,b,a+b FROM (SELECT avg(x) as 'a', avg(y) as 'b' FROM t1)
    WHERE a<10
  


    SELECT a,b,a+b FROM (SELECT avg(x) as 'a', avg(y) as 'b' FROM t1 WHERE y=4)
    WHERE a>10
  


    SELECT a,b,a+b FROM (SELECT avg(x) as 'a', avg(y) as 'b' FROM t1 WHERE y=4)
    WHERE a<10
  


    SELECT a,b,a+b FROM (SELECT avg(x) as 'a', y as 'b' FROM t1 GROUP BY b)
    ORDER BY a
  


    SELECT a,b,a+b FROM 
       (SELECT avg(x) as 'a', y as 'b' FROM t1 GROUP BY b)
    WHERE b<4 ORDER BY a
  


    SELECT a,b,a+b FROM 
       (SELECT avg(x) as 'a', y as 'b' FROM t1 GROUP BY b HAVING a>1)
    WHERE b<4 ORDER BY a
  


    SELECT a,b,a+b FROM 
       (SELECT avg(x) as 'a', y as 'b' FROM t1 GROUP BY b HAVING a>1)
    ORDER BY a
  


    SELECT [count(*)],y FROM (SELECT count(*), y FROM t1 GROUP BY y)
    ORDER BY [count(*)]
  


    SELECT [count(*)],y FROM (SELECT count(*), y FROM t1 GROUP BY y)
    ORDER BY y
  
