

  CREATE TABLE t5(a TEXT PRIMARY KEY, b VARCHAR(50)) WITHOUT ROWID;
  INSERT INTO t5 VALUES('bison','jazz');
  SELECT count(*) FROM t5;

