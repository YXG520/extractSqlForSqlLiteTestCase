
 DROP TABLE t1; 
 DROP TABLE t2; 

      CREATE TABLE t1(a,b);
      INSERT INTO t1 VALUES(1,2);
      CREATE VIEW v1 AS SELECT b FROM t1 WHERE a>0;
      CREATE TABLE t2(p,q);
      INSERT INTO t2 VALUES(2,9);
      SELECT * FROM v1 WHERE EXISTS(SELECT * FROM t2 WHERE p=v1.b);
    


      SELECT * FROM v1 WHERE EXISTS(SELECT 1);
    
 DROP TABLE t1; 
 DROP TABLE t2; 

    CREATE TABLE t1(a,b);
    INSERT INTO t1 VALUES(1,2);
    CREATE TABLE t2(p,q);
    INSERT INTO t2 VALUES(2,9);
  


    CREATE TABLE t1(a,b);
    INSERT INTO t1 VALUES(1,2);
  

    SELECT (SELECT t1.a) FROM t1;
  


    SELECT a, (SELECT b) FROM t1 GROUP BY a;
  

DROP TABLE t2

    CREATE TABLE t2(c, d);
    INSERT INTO t2 VALUES(1, 'one');
    INSERT INTO t2 VALUES(2, 'two');
    SELECT a, (SELECT d FROM t2 WHERE a=c) FROM t1 GROUP BY a;
  


    INSERT INTO t1 VALUES(2, 4);
    SELECT max(a), (SELECT d FROM t2 WHERE a=c) FROM t1;
  


    SELECT a, (SELECT (SELECT d FROM t2 WHERE a=c)) FROM t1 GROUP BY a;
  


    SELECT a, (SELECT count(*) FROM t2 WHERE a=c) FROM t1;
  


    CREATE TABLE t34(x,y);
    INSERT INTO t34 VALUES(106,4), (107,3), (106,5), (107,5);
    SELECT a.x, avg(a.y)
      FROM t34 AS a
     GROUP BY a.x
     HAVING NOT EXISTS( SELECT b.x, avg(b.y)
                          FROM t34 AS b
                         GROUP BY b.x
                         HAVING avg(a.y) > avg(b.y));
  


    SELECT a.x, avg(a.y) AS avg1
      FROM t34 AS a
     GROUP BY a.x
     HAVING NOT EXISTS( SELECT b.x, avg(b.y) AS avg2
                          FROM t34 AS b
                         GROUP BY b.x
                         HAVING avg1 > avg2);
  


    SELECT
       a.x,
       avg(a.y),
       NOT EXISTS ( SELECT b.x, avg(b.y)
                      FROM t34 AS b
                      GROUP BY b.x
                     HAVING avg(a.y) > avg(b.y)),
       EXISTS ( SELECT c.x, avg(c.y)
                  FROM t34 AS c
                  GROUP BY c.x
                 HAVING avg(a.y) > avg(c.y))
      FROM t34 AS a
     GROUP BY a.x
     ORDER BY a.x;
  


    CREATE TABLE t35a(x); INSERT INTO t35a VALUES(1),(2),(3);
    CREATE TABLE t35b(y); INSERT INTO t35b VALUES(98), (99);
    SELECT max((SELECT avg(y) FROM t35b)) FROM t35a;
  


    SELECT max((SELECT count(y) FROM t35b)) FROM t35a;
  


    SELECT max((SELECT count() FROM t35b)) FROM t35a;
  


    SELECT max((SELECT count(x) FROM t35b)) FROM t35a;
  


    SELECT max((SELECT count(x) FROM t35b)) FROM t35a;
  


    SELECT max((SELECT a FROM (SELECT count(x) AS a FROM t35b))) FROM t35a;
  


    SELECT max((SELECT a FROM (SELECT count(y) AS a FROM t35b))) FROM t35a;
  
