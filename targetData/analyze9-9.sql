

  CREATE TABLE t1(a, b, c, d, e);
  CREATE INDEX i1 ON t1(a, b, c, d);
  CREATE INDEX i2 ON t1(e);


INSERT INTO t1 VALUES('x', 'y', 'z', $i, [expr $i/2])
INSERT INTO t1 VALUES('x', 'y', 'z', 101, $i)
INSERT INTO t1 VALUES('x', 'y', 'z', $i, [expr $i/2])

S

S

S

S
