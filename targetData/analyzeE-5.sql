

  PRAGMA encoding = 'UTF-16';
  CREATE TABLE t0 (c1 TEXT);
  INSERT INTO t0 VALUES ('');
  CREATE INDEX i0 ON t0(c1);
  ANALYZE;
  SELECT * FROM t0 WHERE t0.c1 BETWEEN '' AND (ABS(''));

