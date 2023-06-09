
SELECT f1 FROM test1 ORDER BY f2

PRAGMA full_column_names=on
SELECT f1 FROM test1 ORDER BY f2

SELECT f1 as 'f1' FROM test1 ORDER BY f2

SELECT * FROM test1 WHERE f1==11

SELECT DISTINCT * FROM test1 WHERE f1==11
PRAGMA full_column_names=off

SELECT * FROM test1 WHERE f1==11

SELECT DISTINCT * FROM test1 WHERE f1==11

SELECT f1 as xyzzy FROM test1 ORDER BY f2

xyzzy

SELECT f1 as 'xyzzy ' FROM test1 ORDER BY f2

SELECT f1+F2 as xyzzy FROM test1 ORDER BY f2

SELECT f1+F2 FROM test1 ORDER BY f2

SELECT test1.f1+F2 FROM test1 ORDER BY f2

PRAGMA full_column_names=on
SELECT test1.f1+F2 FROM test1 ORDER BY f2
PRAGMA full_column_names=off

SELECT test1.f1+F2, t1 FROM test1, test2 
         ORDER BY f2

SELECT A.f1, t1 FROM test1 as A, test2 
         ORDER BY f2

SELECT A.f1, f1 FROM test1 as A, test1 as B 
         ORDER BY f2

SELECT A.f1, B.f1 FROM test1 as A, test1 as B 
         ORDER BY f2

SELECT A.f1, f1 FROM test1 as A, test1 as A 
         ORDER BY f2

SELECT A.f1, B.f1 FROM test1 as A, test1 as B 
         ORDER BY A.f1, B.f1

SELECT A.f1, B.f1 FROM test1 as A, test1 as B 
         ORDER BY A.f1, B.f1


     PRAGMA short_column_names=OFF;
     PRAGMA full_column_names=OFF;
  

     SELECT test1 . f1, test1 . f2 FROM test1 LIMIT 1
  


     PRAGMA short_column_names=OFF;
     PRAGMA full_column_names=ON;
  

     SELECT test1 . f1, test1 . f2 FROM test1 LIMIT 1
  


     PRAGMA short_column_names=OFF;
     PRAGMA full_column_names=ON;
  

     SELECT 123.45;
  


     SELECT * FROM test1 a, test1 b LIMIT 1
  


     SELECT * FROM test1 a, (select 5, 6) LIMIT 1
  


     SELECT * FROM test1 a, (select 5 AS x, 6 AS y) AS b LIMIT 1
  


     SELECT a.f1, b.f2 FROM test1 a, test1 b LIMIT 1
  


     SELECT f1, t1 FROM test1, test2 LIMIT 1
  


     PRAGMA short_column_names=ON;
     PRAGMA full_column_names=ON;
  

     SELECT a.f1, b.f2 FROM test1 a, test1 b LIMIT 1
  


     SELECT f1, t1 FROM test1, test2 LIMIT 1
  


     PRAGMA short_column_names=ON;
     PRAGMA full_column_names=OFF;
  

     SELECT a.f1, b.f1 FROM test1 a, test1 b LIMIT 1
  


     SELECT f1, t1 FROM test1, test2 LIMIT 1
  


     PRAGMA short_column_names=OFF;
     PRAGMA full_column_names=ON;
  

     SELECT a.f1, b.f1 FROM test1 a, test1 b LIMIT 1
  


     SELECT f1, t1 FROM test1, test2 LIMIT 1
  

  PRAGMA short_column_names=ON;
  PRAGMA full_column_names=OFF;



    SELECT f1 FROM test1 UNION SELECT f2 FROM test1
    ORDER BY f2;
  


    SELECT f1 FROM test1 UNION SELECT f2+100 FROM test1
    ORDER BY f2+101;
  


     CREATE TABLE t6(a TEXT, b TEXT);
     INSERT INTO t6 VALUES('a','0');
     INSERT INTO t6 VALUES('b','1');
     INSERT INTO t6 VALUES('c','2');
     INSERT INTO t6 VALUES('d','3');
     SELECT a FROM t6 WHERE b IN 
        (SELECT b FROM t6 WHERE a<='b' UNION SELECT '3' AS x
                 ORDER BY 1 LIMIT 1)
   


     SELECT a FROM t6 WHERE b IN 
        (SELECT b FROM t6 WHERE a<='b' UNION SELECT '3' AS x
                 ORDER BY 1 DESC LIMIT 1)
   


     SELECT a FROM t6 WHERE b IN 
        (SELECT b FROM t6 WHERE a<='b' UNION SELECT '3' AS x
                 ORDER BY b LIMIT 2)
     ORDER BY a;
   


     SELECT a FROM t6 WHERE b IN 
        (SELECT b FROM t6 WHERE a<='b' UNION SELECT '3' AS x
                 ORDER BY x DESC LIMIT 2)
     ORDER BY a;
   
