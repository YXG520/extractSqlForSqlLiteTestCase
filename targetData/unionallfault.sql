CREATE TABLE t1(x,y,z);
  CREATE TABLE t3(x,y,z);

SELECT * FROM t1, (
      SELECT x FROM t1 UNION ALL SELECT y FROM t1
    ), t3
  
