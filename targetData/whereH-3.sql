

  DROP TABLE t1;
  CREATE TABLE t1(a,b,c,d,e);
  CREATE INDEX t1cd ON t1(c,d);
  CREATE INDEX t1bcd ON t1(b,c,d);
  CREATE INDEX t1abcd ON t1(a,b,c,d);

  EXPLAIN QUERY PLAN
  SELECT d FROM t1 WHERE a=? AND b=? AND c=? AND d>=? ORDER BY d;



  EXPLAIN QUERY PLAN
  SELECT d FROM t1 WHERE a=? AND b=? AND c=? AND d>=? ORDER BY d;

