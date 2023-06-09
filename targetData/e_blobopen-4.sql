

  CREATE TABLE t1(x, y);
  INSERT INTO t1 VALUES('abcd', 152);
  INSERT INTO t1 VALUES(NULL, X'00010203');
  INSERT INTO t1 VALUES('', 154.2);

  CREATE TABLE t2(x PRIMARY KEY, y) WITHOUT ROWID;
  INSERT INTO t2 VALUES(1, 'blob');

  CREATE TABLE t3(a PRIMARY KEY, b, c, d, e, f, UNIQUE(e, f));
  INSERT INTO t3 VALUES('aaaa', 'bbbb', 'cccc', 'dddd', 'eeee', 'ffff');
  CREATE INDEX t3b ON t3(b);

  CREATE TABLE p1(x PRIMARY KEY);
  INSERT INTO p1 VALUES('abc');

  CREATE TABLE c1(a INTEGER PRIMARY KEY, b REFERENCES p1);
  INSERT INTO c1 VALUES(45, 'abc');






