

  DROP TABLE IF EXISTS t3;
  CREATE TABLE t3(a, b);
  CREATE INDEX t3a ON t3(a);
  CREATE INDEX t3b ON t3(b);


INSERT INTO t3 VALUES($a, $b)

S

S


  DROP TABLE IF EXISTS t3;
  CREATE TABLE t3(x, a, b);
  CREATE INDEX t3a ON t3(x, a);
  CREATE INDEX t3b ON t3(x, b);


INSERT INTO t3 VALUES('xyz', $a, $b)

S

S
C
C
