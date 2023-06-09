

  DROP TABLE IF EXISTS t7;
  CREATE TABLE t7(a,b,c);
  INSERT INTO t7(a,b,c) VALUES(1,2,2),('abc','def','def'),(4,5,6);
  CREATE INDEX t7b ON t7(+b);
  CREATE INDEX t7c ON t7(+c);
  SELECT *, '|' FROM t7 WHERE +b=+c ORDER BY +a;



  CREATE TABLE t71(a,b,c);
  CREATE INDEX t71bc ON t71(b+c);
  CREATE TABLE t72(x,y,z);
  CREATE INDEX t72yz ON t72(y+z);
  INSERT INTO t71(a,b,c) VALUES(1,11,2),(2,7,15),(3,5,4);
  INSERT INTO t72(x,y,z) VALUES(1,10,3),(2,8,14),(3,9,9);
  SELECT a, x, '|' FROM t71, t72
   WHERE b+c=y+z
  ORDER BY +a, +x;

