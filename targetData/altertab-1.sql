

  CREATE TABLE t1(a, b, CHECK(t1.a != t1.b));

  CREATE TABLE t2(a, b);
  CREATE INDEX t2expr ON t2(a) WHERE t2.b>0;



  SELECT sql FROM sqlite_master



  ALTER TABLE t1 RENAME TO t1new;



  CREATE TABLE t3(c, d);
  ALTER TABLE t3 RENAME TO t3new;
  DROP TABLE t3new;



  SELECT sql FROM sqlite_master



  ALTER TABLE t2 RENAME TO t2new;



  SELECT sql FROM sqlite_master

