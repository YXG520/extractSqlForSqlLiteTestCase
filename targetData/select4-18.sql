

  CREATE VIEW v0(v0) AS WITH v0 AS(SELECT 0 v0) SELECT(SELECT min(v0) OVER()) FROM v0 GROUP BY v0;
  SELECT *FROM v0 v1 JOIN v0 USING(v0) WHERE datetime(v0) = (v0.v0)AND v0 = 10;



  CREATE VIEW t1(aa) AS
     WITH t2(bb) AS (SELECT 123)
     SELECT (SELECT min(bb) OVER()) FROM t2 GROUP BY bb;
  SELECT * FROM t1;



  SELECT * FROM t1 AS z1 JOIN t1 AS z2 USING(aa)
   WHERE abs(z1.aa)=z2.aa AND z1.aa=123;

