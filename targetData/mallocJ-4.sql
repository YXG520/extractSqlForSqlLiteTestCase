

  CREATE TABLE t1(a,b,c);
  CREATE TABLE t2(x,y,z);


  SELECT * FROM (SELECT a,b FROM t1 UNION ALL SELECT x, y FROM t2) ORDER BY 1
