

  CREATE TABLE t4(a,b,c,d,e,f,g,h,i,j);
  INSERT INTO t4 VALUES(0,1,2,3,4,5,6,7,8,9);
  INSERT INTO t4 SELECT * FROM t4;
  INSERT INTO t4 SELECT * FROM t4;
  CREATE INDEX t4x ON t4(c,d,e);
  SELECT DISTINCT a,b,c FROM t4 WHERE a=0 AND b=1;



  SELECT DISTINCT a,b,c,d FROM t4 WHERE a=0 AND b=1;



  SELECT DISTINCT d,a,b,c FROM t4 WHERE a=0 AND b=1;



  SELECT DISTINCT a,b,c,d,e FROM t4 WHERE a=0 AND b=1;



  SELECT DISTINCT a,b,c,d,e,f FROM t4 WHERE a=0 AND b=1;



  CREATE TABLE t1(a, b COLLATE RTRIM);
  INSERT INTO t1 VALUES(1, ''), (2, ' '), (3, '  ');



  SELECT b FROM t1 UNION SELECT 1;

