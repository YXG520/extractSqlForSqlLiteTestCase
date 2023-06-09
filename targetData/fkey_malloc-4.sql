

  PRAGMA foreign_keys = 1;
  CREATE TABLE t1(x INTEGER PRIMARY KEY, y UNIQUE);
  CREATE TABLE t2(z REFERENCES t1(x), a REFERENCES t1(y));
  CREATE TABLE t3(x);
  CREATE TABLE t4(z REFERENCES t3);
  CREATE TABLE t5(x, y);
  CREATE TABLE t6(z REFERENCES t5(x));
  CREATE INDEX i51 ON t5(x);
  CREATE INDEX i52 ON t5(y, x);
  INSERT INTO t1 VALUES(1, 2);

