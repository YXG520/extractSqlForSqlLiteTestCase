

  CREATE TABLE t4(a,b,c,d,e, PRIMARY KEY(a,b,c));
  CREATE INDEX t4adc ON t4(a,d,c);
  CREATE UNIQUE INDEX t4aebc ON t4(a,e,b,c);
  EXPLAIN QUERY PLAN SELECT rowid FROM t4 WHERE a=? AND b=?;

