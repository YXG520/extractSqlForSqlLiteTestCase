

  CREATE TABLE t1(a, b, c, PRIMARY KEY(a)) WITHOUT ROWID;
  INSERT INTO t1 VALUES(1, 'a', 'z');
  INSERT INTO t1 VALUES(2, 'b', 'y');
  INSERT INTO t1 VALUES(3, 'c', 'x');
  INSERT INTO t1 VALUES(4, 'd', 'w');
  CREATE INDEX i1 ON t1(b);
  CREATE INDEX i2 ON t1(c);


S
Q


  SELECT a FROM t1 WHERE b='b' OR c='x'



  SELECT a FROM t1 WHERE b='a' OR c='z'

