

  CREATE TABLE t1(a INT, b INT);
  INSERT INTO t1 VALUES(1,2),(3,4);
  CREATE TABLE t2(x INT, y INT);
  SELECT *, 'x'
    FROM t1 LEFT JOIN t2
   WHERE CASE WHEN FALSE THEN a=x ELSE 1 END;



  SELECT *, 'x'
    FROM t1 LEFT JOIN t2
   WHERE a IN (1,3,x,y);



  SELECT *, 'x' 
    FROM t1 LEFT JOIN t2 
   WHERE NOT ( 'x'='y' AND t2.y=1 );



  SELECT *, 'x' 
    FROM t1 LEFT JOIN t2 
   WHERE ~ ( 'x'='y' AND t2.y=1 );



  SELECT *, 'x' 
    FROM t1 LEFT JOIN t2 
   WHERE t2.y IS NOT 'abc'



  DROP TABLE t1;
  DROP TABLE t2;
  CREATE TABLE t1(a INTEGER PRIMARY KEY, b INTEGER);
  INSERT INTO t1(a,b) VALUES(1,0),(11,1),(12,1),(13,1),(121,12);
  CREATE INDEX t1b ON t1(b);
  CREATE TABLE t2(x INTEGER PRIMARY KEY);
  INSERT INTO t2(x) VALUES(0),(1);
  SELECT  a1, a2, a3, a4, a5
   FROM (SELECT a AS a1 FROM t1 WHERE b=0)
        JOIN (SELECT x AS x1 FROM t2)
        LEFT JOIN (SELECT a AS a2, b AS b2 FROM t1)
          ON x1 IS TRUE AND b2=a1
        JOIN (SELECT x AS x2 FROM t2)
          ON x2<=CASE WHEN x1 THEN CASE WHEN a2 THEN 1 ELSE -1 END ELSE 0 END
        LEFT JOIN (SELECT a AS a3, b AS b3 FROM t1)
          ON x2 IS TRUE AND b3=a2
        JOIN (SELECT x AS x3 FROM t2)
          ON x3<=CASE WHEN x2 THEN CASE WHEN a3 THEN 1 ELSE -1 END ELSE 0 END
        LEFT JOIN (SELECT a AS a4, b AS b4 FROM t1)
          ON x3 IS TRUE AND b4=a3
        JOIN (SELECT x AS x4 FROM t2)
          ON x4<=CASE WHEN x3 THEN CASE WHEN a4 THEN 1 ELSE -1 END ELSE 0 END
        LEFT JOIN (SELECT a AS a5, b AS b5 FROM t1)
          ON x4 IS TRUE AND b5=a4
   ORDER BY a1, a2, a3, a4, a5;

