

  CREATE TABLE t1 (
    a INTEGER PRIMARY KEY,
    b AS('Y') UNIQUE
  );
  INSERT INTO t1(a) VALUES (10);
  SELECT * FROM t1 JOIN t1 USING(a,b)
   WHERE ((SELECT t1.a FROM t1 AS x GROUP BY b) AND b=0)
      OR a = 10;



  SELECT ifnull(a, max((SELECT 123))), count(a) FROM t1 ;

