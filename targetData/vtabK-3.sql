

  CREATE VIRTUAL TABLE t1 USING rtree(a,b,c);
  CREATE TABLE t2(x);
  ALTER TABLE t2 ADD d GENERATED ALWAYS AS (c IN (SELECT 1 FROM t1)) VIRTUAL;

