

  CREATE TABLE t1(x);
  INSERT INTO t1 VALUES(99);
  SELECT sum((SELECT 1 FROM (SELECT 2 WHERE x IS NULL) WHERE 0)) FROM t1;

