

  CREATE TABLE t191(a INT UNIQUE NOT NULL, b INT UNIQUE NOT NULL,c,d);
  CREATE INDEX t191a ON t1(a);
  CREATE INDEX t191b ON t1(b);
  CREATE TABLE t192(x INTEGER PRIMARY KEY,y INT, z INT);

  EXPLAIN QUERY PLAN
  SELECT t191.rowid FROM t192, t191 WHERE (a=y OR b=y) AND x=?1;
