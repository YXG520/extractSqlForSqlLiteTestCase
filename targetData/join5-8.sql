

  CREATE TABLE t0 (c0, c1, PRIMARY KEY (c0, c1));
  CREATE TABLE t1 (c0);

  INSERT INTO t1 VALUES (2);

  INSERT INTO t0 VALUES(0, 10);
  INSERT INTO t0 VALUES(1, 10);
  INSERT INTO t0 VALUES(2, 10);
  INSERT INTO t0 VALUES(3, 10);



  SELECT * FROM t0, t1 
  WHERE (t0.c1 >= 1 OR t0.c1 < 1) AND t0.c0 IN (1, t1.c0) ORDER BY 1;
