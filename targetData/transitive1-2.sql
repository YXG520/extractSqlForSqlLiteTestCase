

  CREATE TABLE t2(a INTEGER, b INTEGER, c TEXT);
  INSERT INTO t2 VALUES(100,100,100);
  INSERT INTO t2 VALUES(20,20,20);
  INSERT INTO t2 VALUES(3,3,3);

  SELECT * FROM t2 WHERE a=b AND c=b AND c=20;



  SELECT * FROM t2 WHERE a=b AND c=b AND c>=20 ORDER BY +a;



  SELECT * FROM t2 WHERE a=b AND c=b AND c<=20 ORDER BY +a;

