

  CREATE TABLE t1 (a INTEGER PRIMARY KEY);
  CREATE TABLE t2 (a INTEGER PRIMARY KEY, b INTEGER);
  CREATE TABLE t2x (b INTEGER PRIMARY KEY);
  SELECT t1.a FROM ((t1 JOIN t2 ON t1.a=t2.a) AS x JOIN t2x ON x.b=t2x.b) as y;

