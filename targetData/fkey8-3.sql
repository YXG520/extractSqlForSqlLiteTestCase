

  PRAGMA foreign_keys=ON;
  CREATE TABLE t2(
    a PRIMARY KEY, b, c, d, e,
      FOREIGN KEY(b, c) REFERENCES t2(d, e)
  ) WITHOUT ROWID;
  CREATE UNIQUE INDEX idx ON t2(d, e);

  INSERT INTO t2 VALUES(1, 'one', 'one', 'one', 'one'); -- row is parent of self
  INSERT INTO t2 VALUES(2, 'one', 'one', 'one', NULL);  -- parent is row 1



  DELETE FROM t2 WHERE a=1;

