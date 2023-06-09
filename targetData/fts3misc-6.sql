

  CREATE VIRTUAL TABLE t6 USING fts4;

  BEGIN;
  WITH s(i) AS (SELECT 1 UNION ALL SELECT i+1 FROM s WHERE i<50000)
    INSERT INTO t6 SELECT 'x x x x x x x x x x x' FROM s;

  INSERT INTO t6 VALUES('x x x x x x x x x x x A');
  INSERT INTO t6 VALUES('x x x x x x x x x x x B');
  INSERT INTO t6 VALUES('x x x x x x x x x x x A');
  INSERT INTO t6 VALUES('x x x x x x x x x x x B');

  WITH s(i) AS (SELECT 1 UNION ALL SELECT i+1 FROM s WHERE i<50000)
    INSERT INTO t6 SELECT 'x x x x x x x x x x x' FROM s;
  COMMIT;



  SELECT rowid FROM t6 WHERE t6 MATCH 'b OR "x a"'

