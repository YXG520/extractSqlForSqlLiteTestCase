

  ATTACH ':memory:' AS aux;
  CREATE TABLE main.t1(a,b);
  CREATE TABLE aux.t2(x,y);
  INSERT INTO t1 VALUES(1,2);
  INSERT INTO t2 VALUES(3,4);



  CREATE VIEW v1 AS SELECT * FROM t1, aux.t2;



  CREATE VIEW v2 AS WITH v(m,n) AS (SELECT x,y FROM aux.t2) SELECT * FROM t1, v;



  CREATE VIEW v2 AS WITH v(m,n) AS (SELECT 5,?2) SELECT * FROM t1, v;

