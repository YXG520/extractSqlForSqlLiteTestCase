

  CREATE TABLE t1(a INT UNIQUE, b INT);
  INSERT INTO t1(a,b) VALUES('1','2');
  SELECT * FROM t1 WHERE a='1' AND b='2';



  DELETE FROM t1 WHERE a='1' AND b='2';



  SELECT * FROM t1 WHERE a='1' AND b='2';

