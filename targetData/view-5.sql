

    CREATE TABLE t2(y,a);
    INSERT INTO t2 VALUES(22,2);
    INSERT INTO t2 VALUES(33,3);
    INSERT INTO t2 VALUES(44,4);
    INSERT INTO t2 VALUES(55,5);
    SELECT * FROM t2;
  


    CREATE VIEW v5 AS
      SELECT t1.x AS v, t2.y AS w FROM t1 JOIN t2 USING(a);
    SELECT * FROM v5;
  


    EXPLAIN SELECT * FROM v5;
  


    SELECT * FROM v5 AS a, t2 AS b WHERE a.w=b.y;
  


    EXPLAIN SELECT * FROM v5 AS a, t2 AS b WHERE a.w=b.y;
  


    SELECT * FROM t2 AS b, v5 AS a WHERE a.w=b.y;
  


    EXPLAIN SELECT * FROM t2 AS b, v5 AS a WHERE a.w=b.y;
  


    SELECT * FROM t1 AS a, v5 AS b, t2 AS c WHERE a.x=b.v AND b.w=c.y;
  


    EXPLAIN SELECT * FROM t1 AS a, v5 AS b, t2 AS c WHERE a.x=b.v AND b.w=c.y;
  
