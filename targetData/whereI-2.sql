

  CREATE TABLE t2(a, b, c, PRIMARY KEY(a)) WITHOUT ROWID;
  INSERT INTO t2 VALUES('i', 'a', 'z');
  INSERT INTO t2 VALUES('ii', 'b', 'y');
  INSERT INTO t2 VALUES('iii', 'c', 'x');
  INSERT INTO t2 VALUES('iv', 'd', 'w');
  CREATE INDEX i3 ON t2(b);
  CREATE INDEX i4 ON t2(c);


S
Q


  SELECT a FROM t2 WHERE b='b' OR c='x'



  SELECT a FROM t2 WHERE b='a' OR c='z'

