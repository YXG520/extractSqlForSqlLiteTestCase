

  CREATE TABLE t4(a, b, c);
  INSERT INTO t4 VALUES(1, 1, 11);
  INSERT INTO t4 VALUES(1, 2, 12);
  INSERT INTO t4 VALUES(1, NULL, 1);

  INSERT INTO t4 VALUES(2, NULL, 1);
  INSERT INTO t4 VALUES(2, 2, 12);
  INSERT INTO t4 VALUES(2, 1, 11);

  INSERT INTO t4 VALUES(3, NULL, 1);
  INSERT INTO t4 VALUES(3, 2, 12);
  INSERT INTO t4 VALUES(3, NULL, 3);



  SELECT * FROM t4 WHERE a IN (1, 2, 3) ORDER BY a, b NULLS LAST



  CREATE INDEX t4ab ON t4(a, b);
  SELECT * FROM t4 WHERE a IN (1, 2, 3) ORDER BY a, b NULLS LAST


S
Q


  SELECT * FROM t4 WHERE a IN (1, 2, 3) ORDER BY a DESC, b DESC NULLS FIRST


S
Q
