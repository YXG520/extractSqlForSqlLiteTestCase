

  CREATE TABLE t1(a,b,c,d);
  CREATE INDEX i1 ON t1(b,c);

SELECT * FROM sqlite_master
\00\00
