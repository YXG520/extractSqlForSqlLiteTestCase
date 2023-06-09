

  DROP TABLE IF EXISTS t1;
  CREATE TABLE t1(a, b, PRIMARY KEY(a,b));
  INSERT INTO t1 VALUES(9,1),(1,2);
  DROP TABLE IF EXISTS t2;
  CREATE TABLE t2(x, y, PRIMARY KEY(x,y));
  INSERT INTO t2 VALUES(3,3),(4,4);
  SELECT likely(a), x FROM t1, t2 ORDER BY 1, 2;



  SELECT unlikely(a), x FROM t1, t2 ORDER BY 1, 2;



  SELECT likelihood(a,0.5), x FROM t1, t2 ORDER BY 1, 2;



  SELECT coalesce(a,a), x FROM t1, t2 ORDER BY 1, 2;

