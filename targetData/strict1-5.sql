

  DELETE FROM t1;
  INSERT INTO t1(d) VALUES('xyz'),(4),(5.5),(NULL);
  SELECT typeof(d), d FROM t1;



  INSERT INTO t1(d) VALUES(x'4567');

