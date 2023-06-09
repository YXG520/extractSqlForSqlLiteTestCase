

  CREATE TABLE t5(a);
  CREATE TABLE cnt(x);
  WITH RECURSIVE
    c(x) AS (VALUES(1) UNION ALL SELECT x+1 FROM c WHERE x<5)
  INSERT INTO cnt(x) SELECT x FROM c;
  INSERT INTO t5(a) SELECT printf('abc%03dxyz',x) FROM cnt;
  CREATE INDEX t5ax ON t5( substr(a,4,3) );



  -- The use of the "k" alias in the WHERE clause is technically
  -- illegal, but SQLite allows it for historical reasons.  In this
  -- test and the next, verify that "k" can be used by the t5ax index
  SELECT substr(a,4,3) AS k FROM cnt, t5 WHERE k=printf('%03d',x);



  EXPLAIN QUERY PLAN
  SELECT substr(a,4,3) AS k FROM cnt, t5 WHERE k=printf('%03d',x);

