

  CREATE TABLE t1(x);
  INSERT INTO t1(x) VALUES(2),(3);
  SELECT *, '|' FROM t1, generate_series(1,x) ORDER BY 1, 2



  SELECT *, '|' FROM (SELECT x FROM t1) AS y, generate_series(1,y.x)
  ORDER BY 1, 2;



  SELECT * FROM generate_series(0) LIMIT 5;

