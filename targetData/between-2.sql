

  CREATE TABLE t1(x TEXT, y TEXT COLLATE nocase);
  INSERT INTO t1 VALUES('0', 'abc');

SELECT $expr FROM t1