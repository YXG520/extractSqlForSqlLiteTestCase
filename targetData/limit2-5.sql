

  CREATE TABLE t500(i INTEGER PRIMARY KEY, j);
  INSERT INTO t500 VALUES(1, 1);
  INSERT INTO t500 VALUES(2, 2);
  INSERT INTO t500 VALUES(3, 3);
  INSERT INTO t500 VALUES(4, 0);
  INSERT INTO t500 VALUES(5, 5);
  SELECT j FROM t500 WHERE i IN (1,2,3,4,5) ORDER BY j DESC LIMIT 3;



  CREATE TABLE t501(i INTEGER PRIMARY KEY, j);
  INSERT INTO t501 VALUES(1, 5);
  INSERT INTO t501 VALUES(2, 4);
  INSERT INTO t501 VALUES(3, 3);
  INSERT INTO t501 VALUES(4, 6);
  INSERT INTO t501 VALUES(5, 1);
  SELECT j FROM t501 WHERE i IN (1,2,3,4,5) ORDER BY j LIMIT 3;



  CREATE TABLE t502(i INT PRIMARY KEY, j);
  INSERT INTO t502 VALUES(1, 5);
  INSERT INTO t502 VALUES(2, 4);
  INSERT INTO t502 VALUES(3, 3);
  INSERT INTO t502 VALUES(4, 6);
  INSERT INTO t502 VALUES(5, 1);
  SELECT j FROM t502 WHERE i IN (1,2,3,4,5) ORDER BY j LIMIT 3;

