

  CREATE TABLE t1(a,b);
  INSERT INTO t1 VALUES(123,'abc'),(234,'def'),(234,'ghi'),(345,'jkl');
  CREATE TABLE t2(x,y);
  INSERT INTO t2 VALUES(987,'zyx'),(654,'wvu'),(987,'rqp');

  SELECT *, '|' FROM t1, t2 WHERE a=234 AND x=987 ORDER BY +b;



  SELECT *, '|' FROM t1, t2 WHERE a=234 AND x=555;



  SELECT *, '|' FROM t1 LEFT JOIN t2 ON a=234 AND x=555;



  SELECT t1.*, t2.*, '|' FROM t2 RIGHT JOIN t1 ON a=234 AND x=555;



  SELECT *, '|' FROM t1 LEFT JOIN t2 ON x=555 WHERE a=234;



  SELECT t1.*, t2.*, '|' FROM t2 RIGHT JOIN t1 ON x=555 WHERE a=234;



  SELECT *, '|' FROM t1 LEFT JOIN t2 WHERE a=234 AND x=555;



  SELECT t1.*, t2.*, '|' FROM t2 RIGHT JOIN t1 WHERE a=234 AND x=555;

