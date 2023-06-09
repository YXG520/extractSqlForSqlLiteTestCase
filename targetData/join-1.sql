

    CREATE TABLE t1(a,b,c);
    INSERT INTO t1 VALUES(1,2,3);
    INSERT INTO t1 VALUES(2,3,4);
    INSERT INTO t1 VALUES(3,4,5);
    SELECT * FROM t1;
  


    CREATE TABLE t2(b,c,d);
    INSERT INTO t2 VALUES(1,2,3);
    INSERT INTO t2 VALUES(2,3,4);
    INSERT INTO t2 VALUES(3,4,5);
    SELECT * FROM t2;
  


  SELECT t1.rowid, t2.rowid, '|' FROM t1, t2 ON t1.a=t2.b;



    SELECT * FROM t1 NATURAL JOIN t2;
  


    SELECT * FROM t2 NATURAL JOIN t1;
  


    SELECT * FROM t2 AS x NATURAL JOIN t1;
  


    SELECT * FROM t2 NATURAL JOIN t1 AS y;
  


    SELECT b FROM t1 NATURAL JOIN t2;
  


    SELECT t2.* FROM t2 NATURAL JOIN t1
  


    SELECT xyzzy.* FROM t2 AS xyzzy NATURAL JOIN t1
  


    SELECT t1.* FROM t2 NATURAL JOIN t1
  


    SELECT xyzzy.* FROM t2 NATURAL JOIN t1 AS xyzzy
  


    SELECT aaa.*, bbb.* FROM t2 AS aaa NATURAL JOIN t1 AS bbb
  


    SELECT t1.*, t2.* FROM t2 NATURAL JOIN t1
  


    SELECT * FROM t1 INNER JOIN t2 USING(b,c);
  


    SELECT * FROM t1 AS x INNER JOIN t2 USING(b,c);
  


    SELECT * FROM t1 INNER JOIN t2 AS y USING(b,c);
  


    SELECT * FROM t1 AS x INNER JOIN t2 AS y USING(b,c);
  


    SELECT b FROM t1 JOIN t2 USING(b);
  


    SELECT t1.* FROM t1 JOIN t2 USING(b);
  


    SELECT t2.* FROM t1 JOIN t2 USING(b);
  


    SELECT * FROM t1 INNER JOIN t2 USING(b);
  


    SELECT * FROM t1 INNER JOIN t2 USING(c);
  


    SELECT * FROM t1 INNER JOIN t2 USING(c,b);
  


    SELECT * FROM t1 NATURAL CROSS JOIN t2;
  


    SELECT * FROM t1 CROSS JOIN t2 USING(b,c);
  


    SELECT * FROM t1 NATURAL INNER JOIN t2;
  


    SELECT * FROM t1 INNER JOIN t2 USING(b,c);
  


    SELECT * FROM t1 natural inner join t2;
  


      SELECT * FROM t1 NATURAL JOIN 
        (SELECT b as 'c', c as 'd', d as 'e' FROM t2) as t3
    


      SELECT * FROM (SELECT b as 'c', c as 'd', d as 'e' FROM t2) as 'tx'
          NATURAL JOIN t1
    


    CREATE TABLE t3(c,d,e);
    INSERT INTO t3 VALUES(2,3,4);
    INSERT INTO t3 VALUES(3,4,5);
    INSERT INTO t3 VALUES(4,5,6);
    SELECT * FROM t3;
  


    SELECT * FROM t1 natural join t2 natural join t3;
  


    SELECT * FROM t1 natural join t2 natural join t3;
  


    CREATE TABLE t4(d,e,f);
    INSERT INTO t4 VALUES(2,3,4);
    INSERT INTO t4 VALUES(3,4,5);
    INSERT INTO t4 VALUES(4,5,6);
    SELECT * FROM t4;
  


    SELECT * FROM t1 natural join t2 natural join t4;
  


    SELECT * FROM t1 natural join t2 natural join t4;
  


    SELECT * FROM t1 natural join t2 natural join t3 WHERE t1.a=1
  
