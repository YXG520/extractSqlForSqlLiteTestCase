

  CREATE TABLE t12(x INTEGER PRIMARY KEY, y INT, z CHAR(100));
  CREATE INDEX t12y ON t12(y);
  EXPLAIN QUERY PLAN
    SELECT a.x, b.x
      FROM t12 AS a JOIN t12 AS b ON a.y=b.x
     WHERE (b.x=$abc OR b.y=$abc);

