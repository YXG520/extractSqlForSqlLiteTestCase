

  CREATE TABLE t71(a, b, c);
  CREATE INDEX t71abc ON t71(a, b, c);

  SELECT * FROM t71 WHERE a=1 AND b=2 ORDER BY c NULLS LAST;
  SELECT * FROM t71 WHERE a=1 AND b=2 ORDER BY c DESC NULLS FIRST;

  SELECT * FROM t71 ORDER BY a NULLS LAST;
  SELECT * FROM t71 ORDER BY a DESC NULLS FIRST;

