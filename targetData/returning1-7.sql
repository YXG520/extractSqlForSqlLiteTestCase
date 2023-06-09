

  CREATE TABLE t1(a INT, b INT);
  CREATE TABLE t2(x INT, y INT);
  INSERT INTO t1(a,b) VALUES(1,2);
  INSERT INTO t2(x,y) VALUES(1,30);



  UPDATE t1 SET b=b+1 RETURNING new.b;



  UPDATE t1 SET b=b+1 RETURNING old.b;



  UPDATE t1 SET b=b+1 RETURNING another.b;



  UPDATE t1 SET b=b+y FROM t2 WHERE t2.x=t1.a RETURNING t2.x;



  UPDATE t1 SET b=b+y FROM t2 WHERE t2.x=t1.a RETURNING t1.b;



  UPDATE t1 AS alias SET b=123 RETURNING alias.b;



  UPDATE t1 AS alias SET b=alias.b+1000 RETURNING t1.b;

