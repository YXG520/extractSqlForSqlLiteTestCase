

  CREATE TABLE t2(a INT,b INT,d INT); INSERT INTO t2 VALUES(4,5,6),(7,8,9);
  CREATE TABLE t3(a INT,b INT,e INT); INSERT INTO t3 VALUES(3,3,3),(8,8,8);



  WITH t23 AS MATERIALIZED (SELECT * FROM t2 FULL JOIN t3 USING(b))
  SELECT * FROM t23;


W
Q


  WITH t23 AS NOT MATERIALIZED (SELECT * FROM t2 FULL JOIN t3 USING(b))
  SELECT * FROM t23;


W
Q


  WITH t23 AS (SELECT * FROM t2 FULL JOIN t3 USING(b))
  SELECT * FROM t23;


W
Q