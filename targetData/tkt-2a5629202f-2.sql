

  CREATE TABLE t2(a, b NOT NULL, c);
  CREATE UNIQUE INDEX t2ab ON t2(a, b);
  CREATE UNIQUE INDEX t2ba ON t2(b, a);


S

S

S
