

  CREATE TABLE t1(a INT PRIMARY KEY) WITHOUT ROWID;
  CREATE TABLE t2(b INT PRIMARY KEY) WITHOUT ROWID;
  CREATE TABLE t3(c INT PRIMARY KEY) WITHOUT ROWID;
  INSERT INTO t1(a) VALUES(1),(2);
  INSERT INTO t2(b) VALUES(4),(8);
  INSERT INTO t3(c) VALUES(16),(32);
  CREATE VIEW v4(d) AS SELECT c FROM t3;
  SELECT * FROM t1 RIGHT JOIN t2 ON true JOIN v4 ON (d IS NULL);

