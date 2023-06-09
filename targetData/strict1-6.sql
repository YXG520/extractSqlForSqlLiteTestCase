

  DELETE FROM t1;
  INSERT INTO t1(e) VALUES(1),(2.5),('3'),('4.5'),(6.0),(NULL);
  SELECT typeof(e), e FROM t1;



  INSERT INTO t1(e) VALUES('xyz');



  INSERT INTO t1(e) VALUES(x'3456');

